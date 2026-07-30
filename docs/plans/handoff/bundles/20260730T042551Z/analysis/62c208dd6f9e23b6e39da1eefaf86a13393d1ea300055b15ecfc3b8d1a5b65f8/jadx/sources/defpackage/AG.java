package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C3717t0;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class AG {
    /* renamed from: do, reason: not valid java name */
    public static boolean m62do(Activity activity) {
        PackageManager packageManager;
        String str;
        C3717t0.Cif cif;
        String[] strArr = {"ggVU4AXx2WouuH3oPs6N7A==:+TFdADi2xxKfkKGdxmjSAGkh+T0C1pfALjCp8Nfy3CU=:OkpBIvMbpQkoaQw/0EGEBl4rsmo6+NcS6IbbcbAk9Ps=", "WqvkQQbgxnHgAlJv2VeEJA==:yysVu+MiOCyEtvnjoL0si+EEJLbU0wI8QF2UYEPu1gA=:FcWQmR18KgkMsnCuitaA8DAS3okN6X6AQIHToE8Xx/o=", "B5B2qHgAE2at0vvZrVJLkw==:g69qDKK7+kjIwYPUUQGME0Cja88UoT6KElkyqFpKvOs=:MCnpmB6m5AUtKI4TQC2DgYZYZxWZpQVUtH4oHiIgdOa9b3N0wZcHB6bRnpLSusmsPapcFGiCjZem3BnUuAdLxA==", "YB+F8nJISXDkW/O6XQwe+w==:FQuDVqKMRHFOOf+kZY45C1cLmRrSdBP+nrkrK9uVUXU=:WibHAi2VuZko5Yv2YDrJQ4rjkHtLAfvKmYMnamxpKr1xK+cU1uJD7Z8fTJyxnCrVXvyGBuh3ohoh5SwDPJHGbA==", "7xvcVR7x0YvH/D+EOxeWMQ==:BcdzTnKNutdzWBbX+VCTXmt7qIT1BZwz+s3TjrF5O4M=:vbWi+HKq5mGNg93MCdsacw==", "mrpDhFJqanfol0iiAOpkRQ==:MMktGBo4Zki6MqcTLp3K36YBnvp+NuXk5RXsg/NTF1M=:v6O15NUcgPKfc0jKQZaRgQtNlRUL2YxqD7VFEJwvHrc=", "awd/0A49Neu6CqxPM0i0/A==:RAocLQbV8PWVhykI6gK0XEClEfuWwG/E7/se7XV3d8g=:S4o2svBFcez08txt/ccgTSxMle3bsgfjKfvHAbdW7Y0=", "jeMKl4u+DemdQzMc/30OVw==:mFRv1fiQkmI9O+qV9r70Oi4ZV9esrL5acq9reYaKTIk=:vzMqiYoM+RfBHxIs7r2cUIX/4HlGwvhrNaY/YamD6ZI=", "YYf/LdU1uDuC08RPidaMyg==:RKDOP4NnvG+ygFS6Fo3phg/BgRPzw5zO0dSYn8zx1Lo=:bUSbp1f5O7Cn51lzibSFKA7oILM0ZfkFNKlUr98zocI=", "mdpX/enSRq4K2HeqHuMstA==:yLAUxCdx39FyqAJMF5UmVExQhvezMVICyLXrD0m+zIo=:Zs7GsdJrqYayrr+RZl5o3/sYwaNL4ZMjdsgRWt1Oqqk=", "FiouoM2jJvKbX2N03ZCHQA==:Qj0wI/idF+ATJQSCr2JUgy0BLGvDGnkbuO/aw6UmAjM=:CIVpI+aesT3Ple2ZeOjjkf85o+f/AssGKv5rnMfnNYk=", "pBvPhahV4TU4npiE4W0iYA==:dhbpRRnrdVAdZbsLQHKqbsR/lxvHa+57kpyinZsj9kY=:Z6lox6GdOjFvT22/lIztpA==", "b8gx1Qs/sYfCHIG1BMzSXA==:n2XLczY208uo5kUsURCedLq7FMi5e3l7/P3dE/YxUN0=:6MMlt0uBBSrVifB9AfV/JB2JjbW7Hq0OiNKrpH/OTZk=", "DDqD/GX/H9M4anqGNNyjUw==:/i+o5S8WVL9sbDo6Fu7b//TRawfdBlh9Rox7Q6YZbW0=:DctiC4dytPtupIZEes6HF6wtjzS24ugcpUNJB19bDSw=", "rEBymGKO9jkISnQNWUAdCQ==:KhuNqgPe/1YTaz+D+YFJRUoRZnz/xxA3dEba59d0eF4=:durvH3nVJT/JQl878DYVpPOjM28unXg61DrUIT9q9Ys=", "I35j/Lnx2uGw2x5njb54bA==:LTalz3VP+1OfiJcNFug7NzVcTLI++zqxYUTFt8qop48=:qSTVMhNYsBSzEI0HfP8o3jSWFMDvlb5MkqdBVHpCX+w="};
        for (int i = 0; i < 16; i++) {
            String str2 = strArr[i];
            try {
                packageManager = activity.getPackageManager();
                str = null;
                try {
                    cif = C3717t0.m8191for("|Kz5FBA/R18u65htd7FPkAg==:K1s6fBoW6Q/uVQrisyfY6O3kugZMUHBTa1t+TeFtFCQ=");
                } catch (Exception unused) {
                    cif = null;
                }
                try {
                    str = C3717t0.m8190do(new C3717t0.Cdo(str2), cif);
                } catch (Exception unused2) {
                }
                if (str == null) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
            } catch (Exception unused3) {
            }
            if (packageManager.getApplicationInfo(str, 0) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m63for() {
        String str = Build.FINGERPRINT;
        if (!str.startsWith("generic") && !str.startsWith("unknown")) {
            String str2 = Build.MODEL;
            if (!str2.contains("google_sdk") && !str2.contains("Emulator") && !str2.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion") && ((!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) && !"google_sdk".equals(Build.PRODUCT))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m64if(Context context) {
        C3717t0.Cif cif;
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                String encodeToString = Base64.encodeToString(messageDigest.digest(), 0);
                String str = null;
                try {
                    cif = C3717t0.m8191for(" VS5lYLyJbbn0AbQdTcv73g==:4sT0yEMzLsF49azbPQmiDDDgGUhypSSaPMnCLQwQxyY=");
                } catch (Exception unused) {
                    cif = null;
                }
                try {
                    str = C3717t0.m8190do(new C3717t0.Cdo("SZMwKwSpi/ZfBS0qbsK/1Q==:H+1k837qL6kJr7C+ZxDt79ReVW5F+Gjsl696lvbnEOI=:g3I5Y3F1oUOIJ99amGsIg6mgZnObsgdaXusdF5DXJXk="), cif);
                } catch (Exception unused2) {
                }
                if (str == null) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (str.equals(encodeToString)) {
                    return 2860;
                }
            }
            return 4919;
        } catch (Exception unused3) {
            return 4919;
        }
    }
}
