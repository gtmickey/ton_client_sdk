part of 'tonsdkmodule.dart';

class CryptoModule extends _TonSdkModule {
  CryptoModule(TonSdkCore core) : super(core);

  ///Performs prime factorization – decomposition of a composite number
  ///into a product of smaller prime integers (factors).
  ///See [https://en.wikipedia.org/wiki/Integer_factorization]
  Future<ResultOfFactorize> factorize(ParamsOfFactorize params) async {
    final res = await _tonCore.request('crypto.factorize', params.toString());
    return ResultOfFactorize.fromMap(res);
  }

  ///Performs modular exponentiation for big integers (`base`^`exponent` mod `modulus`).
  ///See [https://en.wikipedia.org/wiki/Modular_exponentiation]
  Future<ResultOfModularPower> modular_power(
      ParamsOfModularPower params) async {
    final res =
        await _tonCore.request('crypto.modular_power', params.toString());
    return ResultOfModularPower.fromMap(res);
  }

  ///Calculates CRC16 using TON algorithm.
  Future<ResultOfTonCrc16> ton_crc16(ParamsOfTonCrc16 params) async {
    final res = await _tonCore.request('crypto.ton_crc16', params.toString());
    return ResultOfTonCrc16.fromMap(res);
  }

  ///Generates random byte array of the specified length and returns it in `base64` format
  Future<ResultOfGenerateRandomBytes> generate_random_bytes(
      ParamsOfGenerateRandomBytes params) async {
    final res = await _tonCore.request(
        'crypto.generate_random_bytes', params.toString());
    return ResultOfGenerateRandomBytes.fromMap(res);
  }

  ///Converts public key to ton safe_format
  Future<ResultOfConvertPublicKeyToTonSafeFormat>
      convert_public_key_to_ton_safe_format(
          ParamsOfConvertPublicKeyToTonSafeFormat params) async {
    final res = await _tonCore.request(
        'crypto.convert_public_key_to_ton_safe_format', params.toString());
    return ResultOfConvertPublicKeyToTonSafeFormat.fromMap(res);
  }

  ///Generates random ed25519 key pair.
  Future<KeyPair> generate_random_sign_keys() async {
    final res =
        await _tonCore.request('crypto.generate_random_sign_keys', null);
    return KeyPair.fromMap(res);
  }

  ///Signs a data using the provided keys.
  Future<ResultOfSign> sign(ParamsOfSign params) async {
    final res = await _tonCore.request('crypto.sign', params.toString());
    return ResultOfSign.fromMap(res);
  }

  ///Verifies signed data using the provided public key. Raises error if verification is failed.
  Future<ResultOfVerifySignature> verify_signature(
      ParamsOfVerifySignature params) async {
    final res =
        await _tonCore.request('crypto.verify_signature', params.toString());
    return ResultOfVerifySignature.fromMap(res);
  }

  ///Calculates SHA256 hash of the specified data.
  Future<ResultOfHash> sha256(ParamsOfHash params) async {
    final res = await _tonCore.request('crypto.sha256', params.toString());
    return ResultOfHash.fromMap(res);
  }

  ///Calculates SHA512 hash of the specified data.
  Future<ResultOfHash> sha512(ParamsOfHash params) async {
    final res = await _tonCore.request('crypto.sha512', params.toString());
    return ResultOfHash.fromMap(res);
  }

  ///Derives key from `password` and `key` using `scrypt` algorithm.
  ///See [https://en.wikipedia.org/wiki/Scrypt].
  ///
  ///# Arguments
  ///- `log_n` - The log2 of the Scrypt parameter `N`
  ///- `r` - The Scrypt parameter `r`
  ///- `p` - The Scrypt parameter `p`
  ///# Conditions
  ///- `log_n` must be less than `64`
  ///- `r` must be greater than `0` and less than or equal to `4294967295`
  ///- `p` must be greater than `0` and less than `4294967295`
  ///# Recommended values sufficient for most use-cases
  ///- `log_n = 15` (`n = 32768`)
  ///- `r = 8`
  ///- `p = 1`
  Future<ResultOfScrypt> scrypt(ParamsOfScrypt params) async {
    final res = await _tonCore.request('crypto.scrypt', params.toString());
    return ResultOfScrypt.fromMap(res);
  }

  ///**NOTE:** In the result the secret key is actually the concatenation
  ///of secret and public keys (128 symbols hex string) by design of [NaCL](http://nacl.cr.yp.to/sign.html).
  ///See also [the stackexchange question](https://crypto.stackexchange.com/questions/54353/).
  Future<KeyPair> nacl_sign_keypair_from_secret_key(
      ParamsOfNaclSignKeyPairFromSecret params) async {
    final res = await _tonCore.request(
        'crypto.nacl_sign_keypair_from_secret_key', params.toString());
    return KeyPair.fromMap(res);
  }

  ///Signs data using the signer's secret key.
  Future<ResultOfNaclSign> nacl_sign(ParamsOfNaclSign params) async {
    final res = await _tonCore.request('crypto.nacl_sign', params.toString());
    return ResultOfNaclSign.fromMap(res);
  }

  ///Verifies the signature in `signed` using the signer's public key `public`
  ///and returns the message `unsigned`.
  ///
  ///If the signature fails verification, crypto_sign_open raises an exception.
  Future<ResultOfNaclSignOpen> nacl_sign_open(
      ParamsOfNaclSignOpen params) async {
    final res =
        await _tonCore.request('crypto.nacl_sign_open', params.toString());
    return ResultOfNaclSignOpen.fromMap(res);
  }

  ///Signs the message `unsigned` using the secret key `secret`
  ///and returns a signature `signature`.
  Future<ResultOfNaclSignDetached> nacl_sign_detached(
      ParamsOfNaclSign params) async {
    final res =
        await _tonCore.request('crypto.nacl_sign_detached', params.toString());
    return ResultOfNaclSignDetached.fromMap(res);
  }

  ///Verifies the signature with public key and `unsigned` data.
  Future<ResultOfNaclSignDetachedVerify> nacl_sign_detached_verify(
      ParamsOfNaclSignDetachedVerify params) async {
    final res = await _tonCore.request(
        'crypto.nacl_sign_detached_verify', params.toString());
    return ResultOfNaclSignDetachedVerify.fromMap(res);
  }

  ///Generates a random NaCl key pair
  Future<KeyPair> nacl_box_keypair() async {
    final res = await _tonCore.request('crypto.nacl_box_keypair', null);
    return KeyPair.fromMap(res);
  }

  ///Generates key pair from a secret key
  Future<KeyPair> nacl_box_keypair_from_secret_key(
      ParamsOfNaclBoxKeyPairFromSecret params) async {
    final res = await _tonCore.request(
        'crypto.nacl_box_keypair_from_secret_key', params.toString());
    return KeyPair.fromMap(res);
  }

  ///Encrypt and authenticate a message using the senders secret key, the receivers public
  ///key, and a nonce.
  Future<ResultOfNaclBox> nacl_box(ParamsOfNaclBox params) async {
    final res = await _tonCore.request('crypto.nacl_box', params.toString());
    return ResultOfNaclBox.fromMap(res);
  }

  ///Decrypt and verify the cipher text using the receivers secret key, the senders public key, and the nonce.
  Future<ResultOfNaclBoxOpen> nacl_box_open(ParamsOfNaclBoxOpen params) async {
    final res =
        await _tonCore.request('crypto.nacl_box_open', params.toString());
    return ResultOfNaclBoxOpen.fromMap(res);
  }

  ///Encrypt and authenticate message using nonce and secret key.
  Future<ResultOfNaclBox> nacl_secret_box(ParamsOfNaclSecretBox params) async {
    final res =
        await _tonCore.request('crypto.nacl_secret_box', params.toString());
    return ResultOfNaclBox.fromMap(res);
  }

  ///Decrypts and verifies cipher text using `nonce` and secret `key`.
  Future<ResultOfNaclBoxOpen> nacl_secret_box_open(
      ParamsOfNaclSecretBoxOpen params) async {
    final res = await _tonCore.request(
        'crypto.nacl_secret_box_open', params.toString());
    return ResultOfNaclBoxOpen.fromMap(res);
  }

  ///Prints the list of words from the specified dictionary
  Future<ResultOfMnemonicWords> mnemonic_words(
      ParamsOfMnemonicWords params) async {
    final res =
        await _tonCore.request('crypto.mnemonic_words', params.toString());
    return ResultOfMnemonicWords.fromMap(res);
  }

  ///Generates a random mnemonic from the specified dictionary and word count
  Future<ResultOfMnemonicFromRandom> mnemonic_from_random(
      ParamsOfMnemonicFromRandom params) async {
    final res = await _tonCore.request(
        'crypto.mnemonic_from_random', params.toString());
    return ResultOfMnemonicFromRandom.fromMap(res);
  }

  ///Generates mnemonic from pre-generated entropy
  Future<ResultOfMnemonicFromEntropy> mnemonic_from_entropy(
      ParamsOfMnemonicFromEntropy params) async {
    final res = await _tonCore.request(
        'crypto.mnemonic_from_entropy', params.toString());
    return ResultOfMnemonicFromEntropy.fromMap(res);
  }

  ///The phrase supplied will be checked for word length and validated according to the checksum
  ///specified in BIP0039.
  Future<ResultOfMnemonicVerify> mnemonic_verify(
      ParamsOfMnemonicVerify params) async {
    final res =
        await _tonCore.request('crypto.mnemonic_verify', params.toString());
    return ResultOfMnemonicVerify.fromMap(res);
  }

  ///Validates the seed phrase, generates master key and then derives
  ///the key pair from the master key and the specified path
  Future<KeyPair> mnemonic_derive_sign_keys(
      ParamsOfMnemonicDeriveSignKeys params) async {
    final res = await _tonCore.request(
        'crypto.mnemonic_derive_sign_keys', params.toString());
    return KeyPair.fromMap(res);
  }

  ///Generates an extended master private key that will be the root for all the derived keys
  Future<ResultOfHDKeyXPrvFromMnemonic> hdkey_xprv_from_mnemonic(
      ParamsOfHDKeyXPrvFromMnemonic params) async {
    final res = await _tonCore.request(
        'crypto.hdkey_xprv_from_mnemonic', params.toString());
    return ResultOfHDKeyXPrvFromMnemonic.fromMap(res);
  }

  ///Returns extended private key derived from the specified extended private key and child index
  Future<ResultOfHDKeyDeriveFromXPrv> hdkey_derive_from_xprv(
      ParamsOfHDKeyDeriveFromXPrv params) async {
    final res = await _tonCore.request(
        'crypto.hdkey_derive_from_xprv', params.toString());
    return ResultOfHDKeyDeriveFromXPrv.fromMap(res);
  }

  ///Derives the extended private key from the specified key and path
  Future<ResultOfHDKeyDeriveFromXPrvPath> hdkey_derive_from_xprv_path(
      ParamsOfHDKeyDeriveFromXPrvPath params) async {
    final res = await _tonCore.request(
        'crypto.hdkey_derive_from_xprv_path', params.toString());
    return ResultOfHDKeyDeriveFromXPrvPath.fromMap(res);
  }

  ///Extracts the private key from the serialized extended private key
  Future<ResultOfHDKeySecretFromXPrv> hdkey_secret_from_xprv(
      ParamsOfHDKeySecretFromXPrv params) async {
    final res = await _tonCore.request(
        'crypto.hdkey_secret_from_xprv', params.toString());
    return ResultOfHDKeySecretFromXPrv.fromMap(res);
  }

  ///Extracts the public key from the serialized extended private key
  Future<ResultOfHDKeyPublicFromXPrv> hdkey_public_from_xprv(
      ParamsOfHDKeyPublicFromXPrv params) async {
    final res = await _tonCore.request(
        'crypto.hdkey_public_from_xprv', params.toString());
    return ResultOfHDKeyPublicFromXPrv.fromMap(res);
  }

  ///Performs symmetric `chacha20` encryption.
  Future<ResultOfChaCha20> chacha20(ParamsOfChaCha20 params) async {
    final res = await _tonCore.request('crypto.chacha20', params.toString());
    return ResultOfChaCha20.fromMap(res);
  }

  ///Crypto Box is a root crypto object, that encapsulates some secret (seed phrase usually)
  ///in encrypted form and acts as a factory for all crypto primitives used in SDK:
  ///keys for signing and encryption, derived from this secret.
  ///
  ///Crypto Box encrypts original Seed Phrase with salt and password that is retrieved
  ///from `password_provider` callback, implemented on Application side.
  ///
  ///When used, decrypted secret shows up in core library's memory for a very short period
  ///of time and then is immediately overwritten with zeroes.
  Future<RegisteredCryptoBox> create_crypto_box(
      ParamsOfCreateCryptoBox params) async {
    final res =
        await _tonCore.request('crypto.create_crypto_box', params.toString());
    return RegisteredCryptoBox.fromMap(res);
  }

  ///Removes Crypto Box. Clears all secret data.
  Future<void> remove_crypto_box(RegisteredCryptoBox params) async {
    await _tonCore.request('crypto.remove_crypto_box', params.toString());
  }

  ///Get Crypto Box Info. Used to get `encrypted_secret` that should be used for all the cryptobox initializations except the first one.
  Future<ResultOfGetCryptoBoxInfo> get_crypto_box_info(
      RegisteredCryptoBox params) async {
    final res =
        await _tonCore.request('crypto.get_crypto_box_info', params.toString());
    return ResultOfGetCryptoBoxInfo.fromMap(res);
  }

  ///Attention! Store this data in your application for a very short period of time and overwrite it with zeroes ASAP.
  Future<ResultOfGetCryptoBoxSeedPhrase> get_crypto_box_seed_phrase(
      RegisteredCryptoBox params) async {
    final res = await _tonCore.request(
        'crypto.get_crypto_box_seed_phrase', params.toString());
    return ResultOfGetCryptoBoxSeedPhrase.fromMap(res);
  }

  ///Get handle of Signing Box derived from Crypto Box.
  Future<RegisteredSigningBox> get_signing_box_from_crypto_box(
      ParamsOfGetSigningBoxFromCryptoBox params) async {
    final res = await _tonCore.request(
        'crypto.get_signing_box_from_crypto_box', params.toString());
    return RegisteredSigningBox.fromMap(res);
  }

  ///Derives encryption keypair from cryptobox secret and hdpath and
  ///stores it in cache for `secret_lifetime`
  ///or until explicitly cleared by `clear_crypto_box_secret_cache` method.
  ///If `secret_lifetime` is not specified - overwrites encryption secret with zeroes immediately after
  ///encryption operation.
  Future<RegisteredEncryptionBox> get_encryption_box_from_crypto_box(
      ParamsOfGetEncryptionBoxFromCryptoBox params) async {
    final res = await _tonCore.request(
        'crypto.get_encryption_box_from_crypto_box', params.toString());
    return RegisteredEncryptionBox.fromMap(res);
  }

  ///Removes cached secrets (overwrites with zeroes) from all signing and encryption boxes, derived from crypto box.
  Future<void> clear_crypto_box_secret_cache(RegisteredCryptoBox params) async {
    await _tonCore.request(
        'crypto.clear_crypto_box_secret_cache', params.toString());
  }

  ///Register an application implemented signing box.
  Future<RegisteredSigningBox> register_signing_box(Function params) async {
    final res = await _tonCore.request(
        'crypto.register_signing_box', params.toString());
    return RegisteredSigningBox.fromMap(res);
  }

  ///Creates a default signing box implementation.
  Future<RegisteredSigningBox> get_signing_box(KeyPair params) async {
    final res =
        await _tonCore.request('crypto.get_signing_box', params.toString());
    return RegisteredSigningBox.fromMap(res);
  }

  ///Returns public key of signing key pair.
  Future<ResultOfSigningBoxGetPublicKey> signing_box_get_public_key(
      RegisteredSigningBox params) async {
    final res = await _tonCore.request(
        'crypto.signing_box_get_public_key', params.toString());
    return ResultOfSigningBoxGetPublicKey.fromMap(res);
  }

  ///Returns signed user data.
  Future<ResultOfSigningBoxSign> signing_box_sign(
      ParamsOfSigningBoxSign params) async {
    final res =
        await _tonCore.request('crypto.signing_box_sign', params.toString());
    return ResultOfSigningBoxSign.fromMap(res);
  }

  ///Removes signing box from SDK.
  Future<void> remove_signing_box(RegisteredSigningBox params) async {
    await _tonCore.request('crypto.remove_signing_box', params.toString());
  }

  ///Register an application implemented encryption box.
  Future<RegisteredEncryptionBox> register_encryption_box(
      Function params) async {
    final res = await _tonCore.request(
        'crypto.register_encryption_box', params.toString());
    return RegisteredEncryptionBox.fromMap(res);
  }

  ///Removes encryption box from SDK
  Future<void> remove_encryption_box(RegisteredEncryptionBox params) async {
    await _tonCore.request('crypto.remove_encryption_box', params.toString());
  }

  ///Queries info from the given encryption box
  Future<ResultOfEncryptionBoxGetInfo> encryption_box_get_info(
      ParamsOfEncryptionBoxGetInfo params) async {
    final res = await _tonCore.request(
        'crypto.encryption_box_get_info', params.toString());
    return ResultOfEncryptionBoxGetInfo.fromMap(res);
  }

  ///Block cipher algorithms pad data to cipher block size so encrypted data can be longer then original data. Client should store the original data size after encryption and use it after
  ///decryption to retrieve the original data from decrypted data.
  Future<ResultOfEncryptionBoxEncrypt> encryption_box_encrypt(
      ParamsOfEncryptionBoxEncrypt params) async {
    final res = await _tonCore.request(
        'crypto.encryption_box_encrypt', params.toString());
    return ResultOfEncryptionBoxEncrypt.fromMap(res);
  }

  ///Block cipher algorithms pad data to cipher block size so encrypted data can be longer then original data. Client should store the original data size after encryption and use it after
  ///decryption to retrieve the original data from decrypted data.
  Future<ResultOfEncryptionBoxDecrypt> encryption_box_decrypt(
      ParamsOfEncryptionBoxDecrypt params) async {
    final res = await _tonCore.request(
        'crypto.encryption_box_decrypt', params.toString());
    return ResultOfEncryptionBoxDecrypt.fromMap(res);
  }

  ///Creates encryption box with specified algorithm
  Future<RegisteredEncryptionBox> create_encryption_box(
      ParamsOfCreateEncryptionBox params) async {
    final res = await _tonCore.request(
        'crypto.create_encryption_box', params.toString());
    return RegisteredEncryptionBox.fromMap(res);
  }
}
