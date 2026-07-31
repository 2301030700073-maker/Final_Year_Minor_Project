package androidx.glance.layout;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.glance.GlanceModifier;
import androidx.glance.text.TextStyle;
import coil3.util.UtilsKt;
import kotlin.Function;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BoxKt$Box$3 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ int $$default;
    public final /* synthetic */ Object $content;
    public final /* synthetic */ Object $contentAlignment;
    public final /* synthetic */ Object $modifier;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoxKt$Box$3(String str, GlanceModifier glanceModifier, TextStyle textStyle, int i, int i2, int i3) {
        super(2);
        this.$r8$classId = 3;
        this.$contentAlignment = str;
        this.$modifier = glanceModifier;
        this.$content = textStyle;
        this.$$changed = i;
        this.$$default = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.$$changed;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$content;
        Object obj4 = this.$modifier;
        Object obj5 = this.$contentAlignment;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                RegexKt.Box((GlanceModifier) obj4, (Alignment) obj5, (ComposableLambdaImpl) obj3, (GapComposer) obj, i2 | 1, this.$$default);
                break;
            case 1:
                ((Number) obj2).intValue();
                AndroidView_androidKt.AndroidView((Function1) obj4, (Modifier) obj5, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), this.$$default);
                break;
            case 2:
                ((Number) obj2).intValue();
                UtilsKt.Dialog((Function0) obj4, (DialogProperties) obj5, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), this.$$default);
                break;
            default:
                ((Number) obj2).intValue();
                int i3 = this.$$default;
                ResultKt.Text((String) obj5, (GlanceModifier) obj4, (TextStyle) obj3, this.$$changed, (GapComposer) obj, 1, i3);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BoxKt$Box$3(Object obj, Object obj2, Function function, int i, int i2, int i3) {
        super(2);
        this.$r8$classId = i3;
        this.$modifier = obj;
        this.$contentAlignment = obj2;
        this.$content = function;
        this.$$changed = i;
        this.$$default = i2;
    }
}
