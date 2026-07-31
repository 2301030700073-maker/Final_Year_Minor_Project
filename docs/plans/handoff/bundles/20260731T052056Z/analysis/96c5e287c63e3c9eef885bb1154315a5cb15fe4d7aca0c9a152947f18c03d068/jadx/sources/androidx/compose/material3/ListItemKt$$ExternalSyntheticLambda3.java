package androidx.compose.material3;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda3(long j, TypographyKeyTokens typographyKeyTokens, Function2 function2, int i) {
        this.f$0 = j;
        this.f$1 = typographyKeyTokens;
        this.f$2 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(49);
                CardKt.m269ProvideTextStyleFromToken3JVO9M(this.f$0, (TypographyKeyTokens) obj4, (Function2) obj3, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                AndroidCursorHandle_androidKt.m178CursorHandleUSBMPiE((OffsetProvider) obj4, (Modifier) obj3, this.f$0, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda3(OffsetProvider offsetProvider, Modifier modifier, long j, int i) {
        this.f$1 = offsetProvider;
        this.f$2 = modifier;
        this.f$0 = j;
    }
}
