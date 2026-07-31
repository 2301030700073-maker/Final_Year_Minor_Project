package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnit;
import androidx.sqlite.SQLite;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchSettingContentKt$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ SearchSettingContentKt$$ExternalSyntheticLambda8(MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        MutableState mutableState2 = this.f$0;
        switch (i) {
            case 0:
                ((String) obj).getClass();
                mutableState2.setValue(Boolean.TRUE);
                mutableState.setValue(Boolean.FALSE);
                break;
            case 1:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                if (((int) (textLayoutResult.size >> 32)) >= textLayoutResult.multiParagraph.width) {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                } else {
                    TextStyle textStyle = (TextStyle) mutableState2.getValue();
                    long j = ((TextStyle) mutableState2.getValue()).spanStyle.fontSize;
                    SQLite.m816checkArithmeticR2X_6o(j);
                    mutableState2.setValue(TextStyle.m705copyp1EtxEg$default(textStyle, 0L, SQLite.pack((float) (TextUnit.m773getValueimpl(j) * 0.95d), 1095216660480L & j), null, null, 0L, 0L, null, 16777213));
                    break;
                }
            case 2:
                ((String) obj).getClass();
                mutableState2.setValue(Boolean.TRUE);
                mutableState.setValue(Boolean.FALSE);
                break;
            default:
                ((String) obj).getClass();
                mutableState2.setValue(Boolean.TRUE);
                mutableState.setValue(Boolean.FALSE);
                break;
        }
        return unit;
    }
}
