package androidx.navigation.compose;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavHostController;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Function1 f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$8;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda2(NavHostController navHostController, String str, Modifier modifier, Alignment alignment, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, int i) {
        this.f$0 = navHostController;
        this.f$1 = str;
        this.f$2 = modifier;
        this.f$3 = alignment;
        this.f$5 = function1;
        this.f$6 = function12;
        this.f$7 = function13;
        this.f$8 = function14;
        this.f$10 = function15;
        this.f$11 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$11;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$10;
        Object obj6 = this.f$8;
        Object obj7 = this.f$3;
        Object obj8 = this.f$1;
        Object obj9 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Utf8.SafeProcessor.NavHost((NavHostController) obj9, (String) obj8, this.f$2, (Alignment) obj7, this.f$5, (Function1) obj4, (Function1) obj3, (Function1) obj6, (Function1) obj5, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                BannerInlineNotificationCardKt.BannerInlineNotificationCard((CharSequence) obj9, (CharSequence) obj8, (ComposableLambdaImpl) obj7, this.f$2, (CardColors) obj4, (BorderStroke) obj3, (Shape) obj6, (BannerInlineNotificationCardBehaviour) obj5, this.f$5, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Jsoup.SetupArchiveFolderDialog((SetupArchiveFolderDialogContract$State) obj9, this.f$2, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, this.f$5, (Function1) obj4, (Function1) obj3, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda2(CharSequence charSequence, CharSequence charSequence2, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, CardColors cardColors, BorderStroke borderStroke, Shape shape, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, Function1 function1, int i) {
        this.f$0 = charSequence;
        this.f$1 = charSequence2;
        this.f$3 = composableLambdaImpl;
        this.f$2 = modifier;
        this.f$6 = cardColors;
        this.f$7 = borderStroke;
        this.f$8 = shape;
        this.f$10 = bannerInlineNotificationCardBehaviour;
        this.f$5 = function1;
        this.f$11 = i;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda2(SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function1 function1, Function1 function12, Function1 function13, int i) {
        this.f$0 = setupArchiveFolderDialogContract$State;
        this.f$2 = modifier;
        this.f$1 = function0;
        this.f$3 = function02;
        this.f$8 = function03;
        this.f$10 = function04;
        this.f$5 = function1;
        this.f$6 = function12;
        this.f$7 = function13;
        this.f$11 = i;
    }
}
