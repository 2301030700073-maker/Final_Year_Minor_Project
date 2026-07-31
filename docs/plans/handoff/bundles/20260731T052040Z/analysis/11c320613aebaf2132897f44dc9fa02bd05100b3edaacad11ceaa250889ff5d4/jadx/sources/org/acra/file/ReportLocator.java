package org.acra.file;

import android.content.Context;
import androidx.emoji2.text.ConcurrencyHelpers$$ExternalSyntheticLambda0;
import androidx.emoji2.text.EmojiCompat;
import androidx.viewpager.widget.ViewPager;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReportLocator implements EmojiCompat.MetadataRepoLoader {
    public final Context context;

    public ReportLocator(Context context, int i) {
        switch (i) {
            case 1:
                this.context = context.getApplicationContext();
                break;
            default:
                this.context = context;
                break;
        }
    }

    public File[] getApprovedReports() {
        File dir = this.context.getDir("ACRA-approved", 0);
        dir.getClass();
        Object[] listFiles = dir.listFiles();
        if (listFiles != null) {
            ViewPager.AnonymousClass1 anonymousClass1 = new ViewPager.AnonymousClass1(13);
            if (listFiles.length != 0) {
                listFiles = Arrays.copyOf(listFiles, listFiles.length);
                if (listFiles.length > 1) {
                    Arrays.sort(listFiles, anonymousClass1);
                }
            }
            List asList = Arrays.asList(listFiles);
            asList.getClass();
            File[] fileArr = (File[]) asList.toArray(new File[0]);
            if (fileArr != null) {
                return fileArr;
            }
        }
        return new File[0];
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
    public void load(CharsKt charsKt) {
        ConcurrencyHelpers$$ExternalSyntheticLambda0 concurrencyHelpers$$ExternalSyntheticLambda0 = new ConcurrencyHelpers$$ExternalSyntheticLambda0("EmojiCompatInitializer", 0);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), concurrencyHelpers$$ExternalSyntheticLambda0);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new WorkerKt$$ExternalSyntheticLambda2(1, this, charsKt, threadPoolExecutor));
    }
}
