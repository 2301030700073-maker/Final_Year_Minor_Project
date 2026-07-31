package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.state.ToggleableState;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import app.k9mail.core.ui.compose.designsystem.organism.banner.global.BannerGlobalNotificationCardKt;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutContract$Event;
import com.fsck.k9.ui.settings.AboutContract$State;
import com.fsck.k9.ui.settings.AboutFragment;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.fsck.k9.ui.settings.notificationactions.ActionRowState;
import com.fsck.k9.ui.settings.notificationactions.DragCallbacks;
import com.fsck.k9.ui.settings.notificationactions.MessageNotificationAction;
import com.fsck.k9.ui.settings.notificationactions.MoveActions;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import com.skydoves.landscapist.ImageLoadKt;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.ConstraintsSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollBehaviour;
import okhttp3.Handshake;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ int f$6;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(MutableState mutableState, String str, String str2, String str3, int i, Function1 function1, AboutFragment aboutFragment) {
        this.$r8$classId = 8;
        this.f$0 = mutableState;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$6 = i;
        this.f$4 = function1;
        this.f$5 = aboutFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$6;
        Object obj3 = this.f$4;
        Object obj4 = this.f$0;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$1;
        Unit unit = Unit.INSTANCE;
        final int i3 = 1;
        Object obj8 = this.f$5;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CardKt.OutlinedCard((Modifier) obj4, (Shape) obj7, (CardColors) obj6, (CardElevation) obj5, (BorderStroke) obj3, (ComposableLambdaImpl) obj8, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                CardKt.TriStateCheckbox((ToggleableState) obj7, (Function0) obj6, (Stroke) obj5, (Stroke) obj3, (Modifier) obj4, (CheckboxColors) obj8, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                CardKt.m334ScaffoldLayoutFMILGgc(this.f$6, (Function2) obj4, (ComposableLambdaImpl) obj8, (Function2) obj7, (Function2) obj6, (WindowInsets) obj5, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj8).invoke(this.f$0, (Boolean) obj7, this.f$2, this.f$3, this.f$4, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 4:
                ((Integer) obj2).getClass();
                OAuthBearer.ContentLoadingErrorView((LoadingErrorState) obj7, (ComposableLambdaImpl) obj8, (ComposableLambdaImpl) obj6, (Modifier) obj4, (Alignment) obj5, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                BannerGlobalNotificationCardKt.BannerGlobalNotificationCard((ComposableLambdaImpl) obj8, (String) obj6, (Modifier) obj4, (app.k9mail.core.ui.compose.designsystem.atom.card.CardColors) obj5, (Shape) obj7, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                BannerGlobalNotificationCardKt.BannerGlobalNotificationCard((ComposableLambdaImpl) obj8, (ComposableLambdaImpl) obj6, (app.k9mail.core.ui.compose.designsystem.atom.card.CardColors) obj5, (Shape) obj7, (Modifier) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                Validate.ServerValidationScreen((Function0) obj7, (Function0) obj6, (BaseServerValidationViewModel) obj5, (BrandNameProvider) obj3, (Modifier) obj4, (String) obj8, (Composer) obj, Updater.updateChangedFlags(513), this.f$6);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MutableState mutableState = (MutableState) obj4;
                String str = (String) obj7;
                String str2 = (String) obj6;
                String str3 = (String) obj5;
                final Function1 function1 = (Function1) obj3;
                final AboutFragment aboutFragment = (AboutFragment) obj8;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                final int i4 = 2;
                final int i5 = 0;
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String str4 = ((AboutContract$State) mutableState.getValue()).version;
                    ImmutableList immutableList = ((AboutContract$State) mutableState.getValue()).libraries;
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new AboutFragment$$ExternalSyntheticLambda2(0, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changed2 = gapComposer.changed(function1) | gapComposer.changedInstance(aboutFragment);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                AboutFragment aboutFragment2 = aboutFragment;
                                Function1 function12 = function1;
                                switch (i6) {
                                    case 0:
                                        String string = aboutFragment2.getString(R.string.app_authors_url);
                                        string.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string));
                                        break;
                                    case 1:
                                        String string2 = aboutFragment2.getString(R.string.app_license_url);
                                        string2.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string2));
                                        break;
                                    case 2:
                                        String string3 = aboutFragment2.getString(R.string.app_webpage_url);
                                        string3.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string3));
                                        break;
                                    default:
                                        String string4 = aboutFragment2.getString(R.string.user_forum_url);
                                        string4.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string4));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function02 = (Function0) rememberedValue2;
                    boolean changed3 = gapComposer.changed(function1) | gapComposer.changedInstance(aboutFragment);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Function0() { // from class: com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                AboutFragment aboutFragment2 = aboutFragment;
                                Function1 function12 = function1;
                                switch (i6) {
                                    case 0:
                                        String string = aboutFragment2.getString(R.string.app_authors_url);
                                        string.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string));
                                        break;
                                    case 1:
                                        String string2 = aboutFragment2.getString(R.string.app_license_url);
                                        string2.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string2));
                                        break;
                                    case 2:
                                        String string3 = aboutFragment2.getString(R.string.app_webpage_url);
                                        string3.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string3));
                                        break;
                                    default:
                                        String string4 = aboutFragment2.getString(R.string.user_forum_url);
                                        string4.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string4));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function03 = (Function0) rememberedValue3;
                    boolean changed4 = gapComposer.changed(function1) | gapComposer.changedInstance(aboutFragment);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new Function0() { // from class: com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                AboutFragment aboutFragment2 = aboutFragment;
                                Function1 function12 = function1;
                                switch (i6) {
                                    case 0:
                                        String string = aboutFragment2.getString(R.string.app_authors_url);
                                        string.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string));
                                        break;
                                    case 1:
                                        String string2 = aboutFragment2.getString(R.string.app_license_url);
                                        string2.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string2));
                                        break;
                                    case 2:
                                        String string3 = aboutFragment2.getString(R.string.app_webpage_url);
                                        string3.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string3));
                                        break;
                                    default:
                                        String string4 = aboutFragment2.getString(R.string.user_forum_url);
                                        string4.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string4));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function04 = (Function0) rememberedValue4;
                    boolean changed5 = gapComposer.changed(function1) | gapComposer.changedInstance(aboutFragment);
                    Object rememberedValue5 = gapComposer.rememberedValue();
                    if (changed5 || rememberedValue5 == neverEqualPolicy) {
                        final int i6 = 3;
                        rememberedValue5 = new Function0() { // from class: com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                AboutFragment aboutFragment2 = aboutFragment;
                                Function1 function12 = function1;
                                switch (i62) {
                                    case 0:
                                        String string = aboutFragment2.getString(R.string.app_authors_url);
                                        string.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string));
                                        break;
                                    case 1:
                                        String string2 = aboutFragment2.getString(R.string.app_license_url);
                                        string2.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string2));
                                        break;
                                    case 2:
                                        String string3 = aboutFragment2.getString(R.string.app_webpage_url);
                                        string3.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string3));
                                        break;
                                    default:
                                        String string4 = aboutFragment2.getString(R.string.user_forum_url);
                                        string4.getClass();
                                        function12.invoke(new AboutContract$Event.OnSectionContentClick(string4));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue5);
                    }
                    DebugUtils.AboutScreen(str4, str, str2, str3, this.f$6, immutableList, null, function0, function02, function03, function04, (Function0) rememberedValue5, gapComposer, 0);
                    break;
                }
            case 9:
                ((Integer) obj2).getClass();
                NotificationListItemKt.NotificationActionRow((MessageNotificationAction) obj7, (String) obj6, (ActionRowState) obj5, (MoveActions) obj3, (DragCallbacks) obj8, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                ImageLoadKt.ImageLoad(this.f$1, (Function1) obj6, (Modifier) obj4, (ImageOptions) obj5, (ConstraintsSizeResolver) obj3, (Function4) obj8, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                Handshake.Companion.DialogSettingView((String) obj4, (ImmutableList) obj7, (Function1) obj6, (Function0) obj5, (String) obj3, (Function3) obj8, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                UuidKt.Render$default((MessageListState) obj7, (Function1) obj6, (Modifier) obj4, (Function1) obj5, (MessageListScreenRenderer) obj3, (DefaultMessageListScope) obj8, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                AtomicFU.InAppNotificationHostLayout((BannerInlineListScrollBehaviour) obj7, (PaddingValues) obj6, (ComposableLambdaImpl) obj8, (ComposableLambdaImpl) obj5, (Modifier) obj4, (Function3) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(int i, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, Function2 function23, WindowInsets windowInsets, Function2 function24, int i2) {
        this.$r8$classId = 2;
        this.f$6 = i;
        this.f$0 = function2;
        this.f$5 = composableLambdaImpl;
        this.f$1 = function22;
        this.f$2 = function23;
        this.f$3 = windowInsets;
        this.f$4 = function24;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, app.k9mail.core.ui.compose.designsystem.atom.card.CardColors cardColors, Shape shape, Modifier modifier, Function2 function2, int i) {
        this.$r8$classId = 6;
        this.f$5 = composableLambdaImpl;
        this.f$2 = composableLambdaImpl2;
        this.f$3 = cardColors;
        this.f$1 = shape;
        this.f$0 = modifier;
        this.f$4 = function2;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = 3;
        this.f$5 = composableLambdaImpl;
        this.f$0 = obj;
        this.f$1 = bool;
        this.f$2 = obj2;
        this.f$3 = obj3;
        this.f$4 = obj4;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, String str, Modifier modifier, app.k9mail.core.ui.compose.designsystem.atom.card.CardColors cardColors, Shape shape, Function2 function2, int i) {
        this.$r8$classId = 5;
        this.f$5 = composableLambdaImpl;
        this.f$2 = str;
        this.f$0 = modifier;
        this.f$3 = cardColors;
        this.f$1 = shape;
        this.f$4 = function2;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(ToggleableState toggleableState, Function0 function0, Stroke stroke, Stroke stroke2, Modifier modifier, CheckboxColors checkboxColors, int i) {
        this.$r8$classId = 1;
        this.f$1 = toggleableState;
        this.f$2 = function0;
        this.f$3 = stroke;
        this.f$4 = stroke2;
        this.f$0 = modifier;
        this.f$5 = checkboxColors;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(LoadingErrorState loadingErrorState, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Alignment alignment, ComposableLambdaImpl composableLambdaImpl3, int i) {
        this.$r8$classId = 4;
        this.f$1 = loadingErrorState;
        this.f$5 = composableLambdaImpl;
        this.f$2 = composableLambdaImpl2;
        this.f$0 = modifier;
        this.f$3 = alignment;
        this.f$4 = composableLambdaImpl3;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(MessageNotificationAction messageNotificationAction, String str, ActionRowState actionRowState, MoveActions moveActions, DragCallbacks dragCallbacks, Modifier modifier, int i) {
        this.$r8$classId = 9;
        this.f$1 = messageNotificationAction;
        this.f$2 = str;
        this.f$3 = actionRowState;
        this.f$4 = moveActions;
        this.f$5 = dragCallbacks;
        this.f$0 = modifier;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Function3 function3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = function3;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(Object obj, Function1 function1, Modifier modifier, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$2 = function1;
        this.f$0 = modifier;
        this.f$3 = obj2;
        this.f$4 = obj3;
        this.f$5 = obj4;
        this.f$6 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(Function0 function0, Function0 function02, BaseServerValidationViewModel baseServerValidationViewModel, BrandNameProvider brandNameProvider, Modifier modifier, String str, int i, int i2) {
        this.$r8$classId = 7;
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$3 = baseServerValidationViewModel;
        this.f$4 = brandNameProvider;
        this.f$0 = modifier;
        this.f$5 = str;
        this.f$6 = i2;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda1(BannerInlineListScrollBehaviour bannerInlineListScrollBehaviour, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Function3 function3, int i) {
        this.$r8$classId = 13;
        this.f$1 = bannerInlineListScrollBehaviour;
        this.f$2 = paddingValues;
        this.f$5 = composableLambdaImpl;
        this.f$3 = composableLambdaImpl2;
        this.f$0 = modifier;
        this.f$4 = function3;
        this.f$6 = i;
    }
}
