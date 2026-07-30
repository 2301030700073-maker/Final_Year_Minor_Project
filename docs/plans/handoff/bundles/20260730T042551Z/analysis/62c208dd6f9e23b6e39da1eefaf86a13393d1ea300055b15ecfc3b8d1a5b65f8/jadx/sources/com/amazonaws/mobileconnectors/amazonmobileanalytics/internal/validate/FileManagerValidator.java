package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.validate;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DefaultFileManager;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileManagerValidator {
    /* renamed from: do, reason: not valid java name */
    public static void m5115do(DefaultAnalyticsContext defaultAnalyticsContext) {
        DefaultFileManager defaultFileManager = defaultAnalyticsContext.f8805do.f8837do;
        try {
            defaultFileManager.getClass();
            File m5074if = defaultFileManager.m5074if(new File(new File(defaultFileManager.f8838do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), "validatorFile"));
            if (m5074if == null) {
                throw new RuntimeException("Encountered an error accessing the file system, could not create files");
            }
            if (!defaultFileManager.m5073for(m5074if)) {
                throw new RuntimeException("Encountered an error accessing the file system, could not delete files");
            }
        } catch (IOException e) {
            throw new RuntimeException("Encountered an error accessing the file system", e);
        }
    }
}
