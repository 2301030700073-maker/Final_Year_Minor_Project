package defpackage;

import android.app.Activity;
import android.content.pm.PackageManager;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class QF {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f2890do = {"UNxJhxlKWMScxwUJLRE3Xg==:yESSqxxaBQYtNuhc++Wm9FmeXsA4UkAcWZcT6CjmWXo=:3IFtoYF/JTvSMB1lqm9zYQA/MHMbAJT0XgotCN2QtSQ=", "5NJaYcCM1N7EilLqNQiJAg==:emah88iOzVJ40lrQG472AhU3/mVNBValL692krFlD1Q=:QzcpxQneJQQjWKGa8WhyrVOMNoszRvI65ReN+lo+7gk=", "1M0YoUz17b35kN9bm+v5HA==:/sQ3nLPTX7JVE/RWOcKX5IQEWyTU3WM+v7krY3OhYqw=:Kpn6R9sQZGJLWOvphKXBcb/AXwVsVl4lD9/U7eK83co=", "8zwE2HR6XAn5BRm86+cTwQ==:kO/wX0zRW6jZSgR1xqgoP/tAreHT2g0EFOC3I3lkU6Q=:CYkqEmEYWDU3UIT8iF84/USxiOzvCLQTWudVagZdgxE=", "cuEWCGhT1A5P293KBviT7w==:zqsKk5eTZMfLjMX4qiKnSq5UVlVxqc0nTqeEDaIMfpE=:ETvREtEqFCuMXF6NPV0hY1M6dShDgjmx5LnLfKhG4mQ=", "Zbukru5x6+HzU/K3aDqlog==:DCrXAQjXTb6o4n6AMKjvba1u+3c2jCX+JdqJ641inP0=:ipCW6Ep8CT1icE+5pjG/ANhY1kxEfSmL8kh0vmoOZxQ=", "KBcV0ETtSpYQKRACRm30yg==:OI10ouujv8WbJk9HmUcWNxXgFJ8r5d9xuct5VNU7zJQ=:YbKInS/63jiFluIiOqyBuAe4tU6x+GoG5vDE/mISQOk=", "wZIZ2iIQi0+DTnZ5WdnmVQ==:QnUmc/VtCLTGLg03WiXNBIdNL3DQkW69E4sZjaMZC9c=:Y44HNBCgXg0mYqAnBw3yz8cQw1X4Ikde+Gf6ni6SmUU=", "m4czwg7aLdbniv9smwNfJA==:LJJwBi/mkXfIYy4MmwYiOoKSslxObfKEh20hyBqrdf4=:GTXo+vCq8pLm9FFqGQFtpqkALmLFZCcR2TURKMRuNMQ="};

    /* renamed from: if, reason: not valid java name */
    public static final String[] f2893if = {"NCEBIN3bPpxIAmJL6/5GmQ==:ypptYO3ufk141zbC13MlYeUDyhBb5bvZyDMYeiaWWK8=", "ICVPiB32kxdqGPBajSI/8Q==:Lrh1ilLZk0KyetEyTluu+rTro537tHJDGtUWXTyMsDo=", "Sq6EdvdmOaZ6IrIB465guw==:WVWBqL9HhefUDHeW0GidN8xSAv9ZCeG3xKq/qEA12BY=", "l3I451Y85NpHA1XTU3ertg==:jclLIR9GToKIu8zcqE2AY0Wz0x9EYgkLdnvXqTNVmtA=", "SOdx6dG67mqqaVii8xEc9Q==:lXHXBhRJQPaiWXYsFBcN6klZUDrdMQZmGACowOhI5Io=", "LjD+zamhl4fFDZ19528YgQ==:uzJmb1EpvSC5zlHSbiCp0zTn66DDxJLJCnydpxM+riE=", "yomAn0TybWzOpiNFg3hqAg==:6hChA1hH53B1NqtgPw1nFl5rTqZfF3A82U9RCvzgzZM=", "/2kC7ylpzBIUA+l/HdD2ug==:WyrS5TKGxrnrXD/UqIjnZ9LfJOz1ldXBETuEODp39Wo=", "BNkZqGRnzVF8BVWcaJ5LFQ==:7lSBX5JBYnYEs082Cz5KFQKjvL5aFXryWvEV8LaU/8w="};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean[] f2891do = new boolean[9];

    /* renamed from: for, reason: not valid java name */
    public static final String[] f2892for = new String[9];

    /* renamed from: do, reason: not valid java name */
    public static boolean f2889do = false;

    /* renamed from: do, reason: not valid java name */
    public static void m1838do(Activity activity, int i) {
        String str;
        try {
            str = activity.getPackageManager().getPackageInfo(VJ.m2561const(f2893if[i], f2890do[i]), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (str == null || RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
            return;
        }
        f2891do[i] = true;
        f2892for[i] = str;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1839if(Activity activity) {
        try {
            m1838do(activity, 0);
            m1838do(activity, 1);
            m1838do(activity, 2);
            m1838do(activity, 3);
            m1838do(activity, 4);
            m1838do(activity, 5);
            m1838do(activity, 6);
            m1838do(activity, 7);
            m1838do(activity, 8);
        } catch (RuntimeException e) {
            C0766bi.m4854do().m4855for(e);
            f2889do = true;
        }
    }
}
