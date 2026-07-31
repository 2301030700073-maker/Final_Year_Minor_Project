package org.minidns.dnssec.algorithms;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.SerializationException;
import org.minidns.constants.DnssecConstants;
import org.minidns.dnssec.algorithms.EcdsaSignatureVerifier;
import org.minidns.record.NSEC3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlgorithmMap {
    public static final AlgorithmMap INSTANCE = new AlgorithmMap();
    public final Logger LOGGER = Logger.getLogger(AlgorithmMap.class.getName());
    public final HashMap dsDigestMap;
    public final HashMap nsecDigestMap;
    public final HashMap signatureMap;

    public AlgorithmMap() {
        HashMap hashMap = new HashMap();
        this.dsDigestMap = hashMap;
        this.signatureMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        this.nsecDigestMap = hashMap2;
        try {
            hashMap.put(DnssecConstants.DigestAlgorithm.SHA1, new JavaSecDigestCalculator("SHA-1"));
            hashMap2.put(NSEC3.HashAlgorithm.SHA1, new JavaSecDigestCalculator("SHA-1"));
            try {
                hashMap.put(DnssecConstants.DigestAlgorithm.SHA256, new JavaSecDigestCalculator("SHA-256"));
                try {
                    hashMap.put(DnssecConstants.DigestAlgorithm.SHA384, new JavaSecDigestCalculator("SHA-384"));
                } catch (NoSuchAlgorithmException e) {
                    this.LOGGER.log(Level.FINE, "Platform does not support SHA-384", (Throwable) e);
                }
                try {
                    this.signatureMap.put(DnssecConstants.SignatureAlgorithm.RSAMD5, new DsaSignatureVerifier("MD5withRSA"));
                } catch (NoSuchAlgorithmException e2) {
                    this.LOGGER.log(Level.FINER, "Platform does not support RSA/MD5", (Throwable) e2);
                }
                try {
                    DsaSignatureVerifier dsaSignatureVerifier = new DsaSignatureVerifier("DSA", "SHA1withDSA");
                    this.signatureMap.put(DnssecConstants.SignatureAlgorithm.DSA, dsaSignatureVerifier);
                    this.signatureMap.put(DnssecConstants.SignatureAlgorithm.DSA_NSEC3_SHA1, dsaSignatureVerifier);
                } catch (NoSuchAlgorithmException e3) {
                    this.LOGGER.log(Level.FINE, "Platform does not support DSA/SHA-1", (Throwable) e3);
                }
                try {
                    DsaSignatureVerifier dsaSignatureVerifier2 = new DsaSignatureVerifier("SHA1withRSA");
                    this.signatureMap.put(DnssecConstants.SignatureAlgorithm.RSASHA1, dsaSignatureVerifier2);
                    this.signatureMap.put(DnssecConstants.SignatureAlgorithm.RSASHA1_NSEC3_SHA1, dsaSignatureVerifier2);
                    try {
                        this.signatureMap.put(DnssecConstants.SignatureAlgorithm.RSASHA256, new DsaSignatureVerifier("SHA256withRSA"));
                    } catch (NoSuchAlgorithmException e4) {
                        this.LOGGER.log(Level.INFO, "Platform does not support RSA/SHA-256", (Throwable) e4);
                    }
                    try {
                        this.signatureMap.put(DnssecConstants.SignatureAlgorithm.RSASHA512, new DsaSignatureVerifier("SHA512withRSA"));
                    } catch (NoSuchAlgorithmException e5) {
                        this.LOGGER.log(Level.INFO, "Platform does not support RSA/SHA-512", (Throwable) e5);
                    }
                    try {
                        this.signatureMap.put(DnssecConstants.SignatureAlgorithm.ECC_GOST, new EcgostSignatureVerifier("ECGOST3410", "GOST3411withECGOST3410"));
                    } catch (NoSuchAlgorithmException e6) {
                        this.LOGGER.log(Level.FINE, "Platform does not support GOST R 34.10-2001", (Throwable) e6);
                    }
                    try {
                        this.signatureMap.put(DnssecConstants.SignatureAlgorithm.ECDSAP256SHA256, new EcdsaSignatureVerifier.P256SHA256(EcdsaSignatureVerifier.P256SHA256.SPEC, 32, "SHA256withECDSA"));
                    } catch (NoSuchAlgorithmException e7) {
                        this.LOGGER.log(Level.INFO, "Platform does not support ECDSA/SHA-256", (Throwable) e7);
                    }
                    try {
                        this.signatureMap.put(DnssecConstants.SignatureAlgorithm.ECDSAP384SHA384, new EcdsaSignatureVerifier.P384SHA284(EcdsaSignatureVerifier.P384SHA284.SPEC, 48, "SHA384withECDSA"));
                    } catch (NoSuchAlgorithmException e8) {
                        this.LOGGER.log(Level.INFO, "Platform does not support ECDSA/SHA-384", (Throwable) e8);
                    }
                } catch (NoSuchAlgorithmException e9) {
                    throw new SerializationException("Platform does not support RSA/SHA-1", e9);
                }
            } catch (NoSuchAlgorithmException e10) {
                throw new SerializationException("SHA-256 is mandatory", e10);
            }
        } catch (NoSuchAlgorithmException e11) {
            throw new SerializationException("SHA-1 is mandatory", e11);
        }
    }
}
