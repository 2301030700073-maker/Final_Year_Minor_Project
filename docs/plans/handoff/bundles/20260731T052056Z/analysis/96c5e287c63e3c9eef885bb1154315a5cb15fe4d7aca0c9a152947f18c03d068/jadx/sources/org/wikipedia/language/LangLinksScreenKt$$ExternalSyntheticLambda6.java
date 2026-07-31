package org.wikipedia.language;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import okhttp3.Cookie;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LangLinksScreenKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ TextStyle f$2;

    public /* synthetic */ LangLinksScreenKt$$ExternalSyntheticLambda6(String str, Modifier modifier, TextStyle textStyle, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$2 = textStyle;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TextStyle textStyle = this.f$2;
        Modifier modifier = this.f$1;
        String str = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                TabUtil.ListHeader(str, modifier, textStyle, gapComposer, Updater.updateChangedFlags(49));
                break;
            default:
                Cookie.Companion.ListHeader(str, modifier, textStyle, gapComposer, Updater.updateChangedFlags(49));
                break;
        }
        return unit;
    }
}
