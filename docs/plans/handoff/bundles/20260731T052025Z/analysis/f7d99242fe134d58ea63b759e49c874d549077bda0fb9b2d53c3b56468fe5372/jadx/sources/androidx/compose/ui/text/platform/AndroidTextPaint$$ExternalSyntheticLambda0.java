package androidx.compose.ui.text.platform;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ShaderBrush;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidTextPaint$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ AndroidTextPaint$$ExternalSyntheticLambda0(Object obj, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        long j = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return ((ShaderBrush) ((Brush) obj)).mo476createShaderuvyYCjk(j);
            default:
                return "Error loading folder for account " + ((LegacyAccountDto) obj).id + ", folder ID: " + j;
        }
    }
}
