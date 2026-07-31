package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.core.util.DebugUtils;
import app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda4(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = shape;
        this.f$2 = cardColors;
        this.f$3 = cardElevation;
        this.f$4 = borderStroke;
        this.f$5 = composableLambdaImpl;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        Object obj3 = this.f$5;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.Card(this.f$0, (Shape) obj7, (CardColors) obj6, (CardElevation) obj5, (BorderStroke) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags, this.f$7);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                RemoteImageKt.RemoteImage((String) obj7, this.f$0, (Function3) obj6, (Alignment) obj5, (ContentScale) obj4, (Painter) obj3, (Composer) obj, updateChangedFlags2, this.f$7);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                BannerInlineNotificationCardKt.ErrorBannerInlineNotificationCard((CharSequence) obj7, (CharSequence) obj6, (ComposableLambdaImpl) obj3, this.f$0, (BannerInlineNotificationCardBehaviour) obj5, (Function1) obj4, (Composer) obj, updateChangedFlags3, this.f$7);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                DebugUtils.WizardNavigationBar((Function0) obj7, (Function0) obj6, this.f$0, (String) obj5, (String) obj4, (WizardNavigationBarState) obj3, (Composer) obj, updateChangedFlags4, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda4(CharSequence charSequence, CharSequence charSequence2, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, Function1 function1, int i, int i2) {
        this.f$1 = charSequence;
        this.f$2 = charSequence2;
        this.f$5 = composableLambdaImpl;
        this.f$0 = modifier;
        this.f$3 = bannerInlineNotificationCardBehaviour;
        this.f$4 = function1;
        this.f$6 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda4(String str, Modifier modifier, Function3 function3, Alignment alignment, ContentScale contentScale, Painter painter, int i, int i2) {
        this.f$1 = str;
        this.f$0 = modifier;
        this.f$2 = function3;
        this.f$3 = alignment;
        this.f$4 = contentScale;
        this.f$5 = painter;
        this.f$6 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda4(Function0 function0, Function0 function02, Modifier modifier, String str, String str2, WizardNavigationBarState wizardNavigationBarState, int i, int i2) {
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$0 = modifier;
        this.f$3 = str;
        this.f$4 = str2;
        this.f$5 = wizardNavigationBarState;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
