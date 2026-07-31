package coil3.decode;

import android.content.res.AssetFileDescriptor;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.utils.IdGenerator;
import java.util.concurrent.Callable;
import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StaticImageDecoderKt$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StaticImageDecoderKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return (AssetFileDescriptor) obj;
            default:
                WorkDatabase workDatabase = ((IdGenerator) obj).workDatabase;
                Long longValue = workDatabase.preferenceDao().getLongValue("next_job_scheduler_id");
                int i2 = 0;
                int longValue2 = longValue != null ? (int) longValue.longValue() : 0;
                int i3 = longValue2 == Integer.MAX_VALUE ? 0 : longValue2 + 1;
                PreferenceDao_Impl preferenceDao = workDatabase.preferenceDao();
                int i4 = 27;
                ExceptionsKt.performBlocking(preferenceDao.__db, false, true, new NavController$$ExternalSyntheticLambda3(i4, preferenceDao, new Preference("next_job_scheduler_id", Long.valueOf(i3))));
                if (longValue2 < 0 || longValue2 > Integer.MAX_VALUE) {
                    PreferenceDao_Impl preferenceDao2 = workDatabase.preferenceDao();
                    ExceptionsKt.performBlocking(preferenceDao2.__db, false, true, new NavController$$ExternalSyntheticLambda3(i4, preferenceDao2, new Preference("next_job_scheduler_id", 1L)));
                } else {
                    i2 = longValue2;
                }
                return Integer.valueOf(i2);
        }
    }
}
