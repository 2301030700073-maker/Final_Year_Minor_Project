package defpackage;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* renamed from: ln, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3291ln {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f14243do = {"*", "FCM", "GCM", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SharedPreferences f14244do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14245do;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        if (r1.isEmpty() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3291ln(defpackage.C0706ai r4) {
        /*
            r3 = this;
            r3.<init>()
            r4.m3147do()
            java.lang.String r0 = "com.google.android.gms.appid"
            r1 = 0
            android.content.Context r2 = r4.f4985do
            android.content.SharedPreferences r0 = r2.getSharedPreferences(r0, r1)
            r3.f14244do = r0
            r4.m3147do()
            oi r0 = r4.f4989do
            java.lang.String r1 = r0.f14830try
            if (r1 == 0) goto L1b
            goto L48
        L1b:
            r4.m3147do()
            java.lang.String r1 = r0.f14828if
            java.lang.String r4 = "1:"
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L31
            java.lang.String r4 = "2:"
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L31
            goto L48
        L31:
            java.lang.String r4 = ":"
            java.lang.String[] r4 = r1.split(r4)
            int r0 = r4.length
            r1 = 4
            r2 = 0
            if (r0 == r1) goto L3e
        L3c:
            r1 = r2
            goto L48
        L3e:
            r0 = 1
            r1 = r4[r0]
            boolean r4 = r1.isEmpty()
            if (r4 == 0) goto L48
            goto L3c
        L48:
            r3.f14245do = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3291ln.<init>(ai):void");
    }

    /* renamed from: do, reason: not valid java name */
    public final String m7385do() {
        String string;
        synchronized (this.f14244do) {
            string = this.f14244do.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m7386if() {
        PublicKey publicKey;
        synchronized (this.f14244do) {
            String str = null;
            String string = this.f14244do.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                e.toString();
                publicKey = null;
            }
            if (publicKey == null) {
                return null;
            }
            try {
                byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
                digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
                str = Base64.encodeToString(digest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
            }
            return str;
        }
    }
}
