package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.StableHolder;
import com.skydoves.landscapist.coil3.CoilImageKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IconKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(long j, StableHolder stableHolder, ImageOptions imageOptions, StableHolder stableHolder2, int i, int i2) {
        this.f$3 = j;
        this.f$0 = stableHolder;
        this.f$1 = imageOptions;
        this.f$2 = stableHolder2;
        this.f$4 = i;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit CoilThumbnail_4goxYXU$lambda$1;
        int i = this.$r8$classId;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$4 | 1);
                IconKt.m345Iconww6aTOc((ImageVector) obj5, (String) obj4, (Modifier) obj3, this.f$3, (Composer) obj, updateChangedFlags, this.f$5);
                return Unit.INSTANCE;
            default:
                int intValue = ((Integer) obj2).intValue();
                CoilThumbnail_4goxYXU$lambda$1 = CoilImageKt.CoilThumbnail_4goxYXU$lambda$1(this.f$3, (StableHolder) obj5, (ImageOptions) obj4, (StableHolder) obj3, this.f$4, this.f$5, (Composer) obj, intValue);
                return CoilThumbnail_4goxYXU$lambda$1;
        }
    }

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(ImageVector imageVector, String str, Modifier modifier, long j, int i, int i2) {
        this.f$0 = imageVector;
        this.f$1 = str;
        this.f$2 = modifier;
        this.f$3 = j;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
