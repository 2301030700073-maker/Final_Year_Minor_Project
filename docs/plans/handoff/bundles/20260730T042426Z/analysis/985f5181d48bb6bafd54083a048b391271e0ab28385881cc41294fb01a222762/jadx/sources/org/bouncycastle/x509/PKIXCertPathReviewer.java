package org.bouncycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected Date currentDate;
    protected List[] errors;
    private boolean initialized;
    protected int n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (CertPathReviewerException e2) {
                addError(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.KEY_USAGE);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.NAME_CONSTRAINTS);
                if (size == 0) {
                    criticalExtensionOIDs.remove(Extension.extendedKeyUsage.getId());
                }
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it3.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i = 0; i < aSN1Sequence2.size(); i++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e2) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e2, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e3) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e3, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e4) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                        }
                    } catch (IOException e5) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e5, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i2 = 0; i2 != excludedSubtrees.length; i2++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i2]);
                            }
                        }
                    }
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e6, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        BigInteger pathLenConstraint;
        int intValue;
        int i = this.n;
        int i2 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                i--;
                i2++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && (pathLenConstraint = basicConstraints.getPathLenConstraint()) != null && (intValue = pathLenConstraint.intValue()) < i) {
                i = intValue;
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i2)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:227:0x0140 A[Catch: CertPathReviewerException -> 0x00e0, TRY_LEAVE, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0123 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0219 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0242 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkPolicy() {
        /*
            Method dump skipped, instructions count: 1543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:91|92|(3:(15:94|95|96|(11:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)|111|112)|122|95|96|(0)|119|99|(1:100)|103|104|(1:105)|108|109|110) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:30|(2:137|138)(2:32|(2:130|131)(20:34|(2:38|(17:40|41|42|43|44|(18:91|92|(15:94|95|96|(11:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)|122|95|96|(0)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)(1:46)|(1:90)(1:50)|51|(7:53|(2:55|(1:57))(1:88)|58|59|(2:61|(1:63))(1:85)|64|(9:66|(1:83)|70|71|72|74|75|77|78))(1:89)|84|70|71|72|74|75|77|78))|129|41|42|43|44|(0)(0)|(1:48)|90|51|(0)(0)|84|70|71|72|74|75|77|78))|132|42|43|44|(0)(0)|(0)|90|51|(0)(0)|84|70|71|72|74|75|77|78) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0332, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0333, code lost:
    
        r13 = r3;
        r20 = r4;
        r11 = r5;
        r17 = r6;
        r15 = r7;
        r21 = r8;
        r12 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02bd, code lost:
    
        addError(new org.bouncycastle.i18n.ErrorBundle(r9, "CertPathReviewer.crlAuthInfoAccError"), r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0262, code lost:
    
        r2 = new java.lang.Object[r15];
        r2[0] = new org.bouncycastle.i18n.filter.TrustedInput(r3.getNotAfter());
        r0 = new org.bouncycastle.i18n.ErrorBundle(r9, "CertPathReviewer.certificateExpired", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0276, code lost:
    
        addError(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x027a, code lost:
    
        r2 = new java.lang.Object[r15];
        r2[0] = new org.bouncycastle.i18n.filter.TrustedInput(r3.getNotBefore());
        r0 = new org.bouncycastle.i18n.ErrorBundle(r9, "CertPathReviewer.certificateNotYetValid", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03fa, code lost:
    
        addError(new org.bouncycastle.i18n.ErrorBundle(r12, "CertPathReviewer.pubKeyError"), r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03f8, code lost:
    
        r6 = r17;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02db A[LOOP:1: B:100:0x02d5->B:102:0x02db, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02fe A[LOOP:2: B:105:0x02f8->B:107:0x02fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0297 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02b8 A[Catch: AnnotatedException -> 0x02bd, TRY_LEAVE, TryCatch #12 {AnnotatedException -> 0x02bd, blocks: (B:96:0x02b0, B:98:0x02b8), top: B:95:0x02b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSignatures() {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkSignatures():void");
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        String str;
        char c;
        int i2;
        ErrorBundle errorBundle;
        ErrorBundle errorBundle2;
        char c2 = 2;
        String str2 = RESOURCE_NAME;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            int i3 = 0;
            boolean z = false;
            while (i3 < aSN1Sequence.size()) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i3));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.QcEuCompliance");
                } else if (RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    str = str2;
                    i2 = 1;
                    c = 2;
                    i3 += i2;
                    c2 = c;
                    str2 = str;
                } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.QcSSCD");
                } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                    monetaryValue.getCurrency();
                    String str3 = str2;
                    try {
                        double doubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                        if (monetaryValue.getCurrency().isAlphabetic()) {
                            String alphabetic = monetaryValue.getCurrency().getAlphabetic();
                            TrustedInput trustedInput = new TrustedInput(new Double(doubleValue));
                            Object[] objArr = new Object[3];
                            objArr[0] = alphabetic;
                            objArr[1] = trustedInput;
                            objArr[c2] = monetaryValue;
                            str = str3;
                            try {
                                errorBundle = new ErrorBundle(str, "CertPathReviewer.QcLimitValueAlpha", objArr);
                            } catch (AnnotatedException unused) {
                                addError(new ErrorBundle(str, "CertPathReviewer.QcStatementExtError"), i);
                                return false;
                            }
                        } else {
                            str = str3;
                            errorBundle = new ErrorBundle(str, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), monetaryValue});
                        }
                        addNotification(errorBundle, i);
                        i2 = 1;
                        c = 2;
                        i3 += i2;
                        c2 = c;
                        str2 = str;
                    } catch (AnnotatedException unused2) {
                        str = str3;
                    }
                } else {
                    str = str2;
                    ASN1ObjectIdentifier statementId = qCStatement.getStatementId();
                    UntrustedInput untrustedInput = new UntrustedInput(qCStatement);
                    c = 2;
                    i2 = 1;
                    addNotification(new ErrorBundle(str, "CertPathReviewer.QcUnknownStatement", new Object[]{statementId, untrustedInput}), i);
                    z = true;
                    i3 += i2;
                    c2 = c;
                    str2 = str;
                }
                addNotification(errorBundle2, i);
                str = str2;
                i2 = 1;
                c = 2;
                i3 += i2;
                c2 = c;
                str2 = str;
            }
            return !z;
        } catch (AnnotatedException unused3) {
            str = str2;
        }
    }

    protected void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x025c  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void checkCRLs(java.security.cert.PKIXParameters r22, java.security.cert.X509Certificate r23, java.util.Date r24, java.security.cert.X509Certificate r25, java.security.PublicKey r26, java.util.Vector r27, int r28) throws org.bouncycastle.x509.CertPathReviewerException {
        /*
            Method dump skipped, instructions count: 1076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkCRLs(java.security.cert.PKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.Vector, int):void");
    }

    protected void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    protected void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i = this.n;
        this.notifications = new List[i + 1];
        this.errors = new List[i + 1];
        int i2 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i2 >= listArr.length) {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
            listArr[i2] = new ArrayList();
            this.errors[i2] = new ArrayList();
            i2++;
        }
    }

    protected Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((ASN1IA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.n;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    protected Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i = 0; i < accessDescriptions.length; i++) {
                if (accessDescriptions[i].getAccessMethod().equals((ASN1Primitive) AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((ASN1IA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    protected Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                if (authorityKeyIdentifier.getAuthorityCertSerialNumber() != null) {
                    x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                } else {
                    byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
                    if (keyIdentifier != null) {
                        x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
                    }
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        this.certPath = certPath;
        List<? extends Certificate> certificates = certPath.getCertificates();
        this.certs = certificates;
        this.n = certificates.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.currentDate = date;
        this.validDate = CertPathValidatorUtilities.getValidityDate(this.pkixParams, date);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        int i = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i >= listArr.length) {
                return true;
            }
            if (!listArr[i].isEmpty()) {
                return false;
            }
            i++;
        }
    }
}
