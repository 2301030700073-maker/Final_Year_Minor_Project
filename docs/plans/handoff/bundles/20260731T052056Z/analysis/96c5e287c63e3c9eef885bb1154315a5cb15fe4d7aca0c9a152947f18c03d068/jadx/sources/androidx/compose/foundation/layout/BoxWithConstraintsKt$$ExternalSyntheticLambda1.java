package androidx.compose.foundation.layout;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.glance.GlanceModifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.RegexKt;
import okio.Okio__JvmOkioKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;
import org.wikipedia.widgets.readingchallenge.SmallWidgetSize;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BoxWithConstraintsKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ BoxWithConstraintsKt$$ExternalSyntheticLambda1(Modifier modifier, Alignment alignment, boolean z, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = alignment;
        this.f$2 = z;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$3;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                OffsetKt.BoxWithConstraints((Modifier) obj5, (Alignment) obj4, this.f$2, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), this.f$5);
                break;
            case 1:
                ((Integer) obj2).getClass();
                Okio__JvmOkioKt.WikiErrorView((Modifier) obj5, (Throwable) obj4, (WikiErrorClickEvents) obj3, this.f$2, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), this.f$5);
                break;
            default:
                GlanceModifier glanceModifier = (GlanceModifier) obj5;
                SmallWidgetSize smallWidgetSize = (SmallWidgetSize) obj4;
                Function2 function2 = (Function2) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    RegexKt.Box(glanceModifier, null, Expect_jvmKt.rememberComposableLambda(132624738, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13(smallWidgetSize, this.f$4, this.f$5, this.f$2, function2), gapComposer), gapComposer, 384, 2);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ BoxWithConstraintsKt$$ExternalSyntheticLambda1(Modifier modifier, Throwable th, WikiErrorClickEvents wikiErrorClickEvents, boolean z, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = th;
        this.f$3 = wikiErrorClickEvents;
        this.f$2 = z;
        this.f$4 = i;
        this.f$5 = i2;
    }

    public /* synthetic */ BoxWithConstraintsKt$$ExternalSyntheticLambda1(GlanceModifier glanceModifier, SmallWidgetSize smallWidgetSize, int i, int i2, boolean z, Function2 function2) {
        this.f$0 = glanceModifier;
        this.f$1 = smallWidgetSize;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$2 = z;
        this.f$3 = function2;
    }
}
