package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda22 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ TypographyKeyTokens f$1;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda22(long j, TypographyKeyTokens typographyKeyTokens, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = j;
        this.f$1 = typographyKeyTokens;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TypographyKeyTokens typographyKeyTokens = this.f$1;
        long j = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                ListItemKt.m151OverlineDecorator3JVO9M(j, typographyKeyTokens, composer, Updater.updateChangedFlags(49));
                break;
            default:
                ListItemKt.m153SupportingDecorator3JVO9M(j, typographyKeyTokens, composer, Updater.updateChangedFlags(49));
                break;
        }
        return unit;
    }
}
