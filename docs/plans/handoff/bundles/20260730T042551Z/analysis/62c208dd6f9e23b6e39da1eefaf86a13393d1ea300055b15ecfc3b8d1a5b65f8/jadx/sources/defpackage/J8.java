package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Scanner;

/* loaded from: classes3.dex */
public final class J8 {

    /* renamed from: do, reason: not valid java name */
    public static final char[] f1594do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 J8$do, still in use, count: 1, list:
      (r0v0 J8$do) from 0x008c: INVOKE (r2v5 java.util.HashMap), ("x86"), (r0v0 J8$do) VIRTUAL call: java.util.HashMap.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)] (LINE:141)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: J8$do, reason: invalid class name */
    public static final class Cdo {
        /* JADX INFO: Fake field, exist only in values array */
        X86_32,
        /* JADX INFO: Fake field, exist only in values array */
        X86_64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM_UNKNOWN,
        /* JADX INFO: Fake field, exist only in values array */
        PPC,
        /* JADX INFO: Fake field, exist only in values array */
        PPC64,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV6,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV7,
        UNKNOWN,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV7S,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64;


        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final HashMap f1596do;

        static {
            HashMap hashMap = new HashMap(4);
            f1596do = hashMap;
            hashMap.put("armeabi-v7a", r11);
            hashMap.put("armeabi", r9);
            hashMap.put("arm64-v8a", r14);
            hashMap.put("x86", r0);
        }

        public Cdo() {
        }

        public static Cdo valueOf(String str) {
            return (Cdo) Enum.valueOf(Cdo.class, str);
        }

        public static Cdo[] values() {
            return (Cdo[]) f1597do.clone();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static String m1010break(FileInputStream fileInputStream) {
        Scanner useDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m1011case(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f1594do;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized long m1012do(Context context) {
        long j;
        synchronized (J8.class) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            j = memoryInfo.totalMem;
        }
        return j;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m1013else() {
        if (!Build.PRODUCT.contains(ServerProtocol.DIALOG_PARAM_SDK_VERSION)) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu")) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: for, reason: not valid java name */
    public static int m1014for() {
        boolean m1013else = m1013else();
        ?? r0 = m1013else;
        if (m1015goto()) {
            r0 = (m1013else ? 1 : 0) | 2;
        }
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger() ? r0 | 4 : r0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m1015goto() {
        boolean m1013else = m1013else();
        String str = Build.TAGS;
        if ((m1013else || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !m1013else && new File("/system/xbin/su").exists();
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1016if(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1017new(Context context) {
        int m1019try = m1019try(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (m1019try == 0) {
            m1019try = m1019try(context, "com.crashlytics.android.build_id", "string");
        }
        if (m1019try != 0) {
            return context.getResources().getString(m1019try);
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public static String m1018this(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return m1011case(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m1019try(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i);
                if (Constants.PLATFORM.equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }
}
