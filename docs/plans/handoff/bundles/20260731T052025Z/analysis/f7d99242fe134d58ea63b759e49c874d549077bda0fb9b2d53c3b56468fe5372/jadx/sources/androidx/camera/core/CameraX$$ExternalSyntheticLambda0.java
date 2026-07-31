package androidx.camera.core;

import android.content.Context;
import androidx.room.util.SchemaInfoUtilKt;
import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraX$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ CameraX$$ExternalSyntheticLambda0(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Context context = this.f$0;
        switch (i) {
            case 0:
                return new RotationProvider(context);
            case 1:
                return SchemaInfoUtilKt.createNavController$NavHostControllerKt__NavHostController_androidKt(context);
            case 2:
                return context.getString(R.string.app_name);
            case 3:
                return context.getString(R.string.app_name);
            default:
                return Options.Companion.parametersOf(context);
        }
    }
}
