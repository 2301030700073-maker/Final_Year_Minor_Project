package app.k9mail.core.ui.compose.designsystem.atom;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.work.Operation$State;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.ui.messagelist.MessageListAppearance;
import com.fsck.k9.ui.messagelist.MessageListItem;
import com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwitchKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$3;

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(MessageListItem messageListItem, boolean z, boolean z2, ComposableMessageViewHolder composableMessageViewHolder) {
        this.f$1 = messageListItem;
        this.f$0 = z;
        this.f$3 = z2;
        this.f$2 = composableMessageViewHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object[] objArr = 0;
        final int i2 = 2;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        final int i3 = 1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Operation$State.Switch(this.f$0, (Function1) obj4, (Modifier) obj3, this.f$3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ComposableMessageViewHolder composableMessageViewHolder = (ComposableMessageViewHolder) obj4;
                MessageListItem messageListItem = (MessageListItem) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((K9FeatureThemeProvider) composableMessageViewHolder.themeProvider).WithTheme(Expect_jvmKt.rememberComposableLambda(1089722173, new SwitchKt$$ExternalSyntheticLambda0(messageListItem, this.f$0, this.f$3, composableMessageViewHolder), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                final MessageListItem messageListItem2 = (MessageListItem) obj4;
                final ComposableMessageViewHolder composableMessageViewHolder2 = (ComposableMessageViewHolder) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ContactRepository contactRepository = composableMessageViewHolder2.contactRepository;
                    DefaultAvatarMonogramCreator defaultAvatarMonogramCreator = composableMessageViewHolder2.avatarMonogramCreator;
                    boolean changedInstance = gapComposer2.changedInstance(composableMessageViewHolder2) | gapComposer2.changedInstance(messageListItem2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                MessageListItem messageListItem3 = messageListItem2;
                                ComposableMessageViewHolder composableMessageViewHolder3 = composableMessageViewHolder2;
                                switch (i4) {
                                    case 0:
                                        composableMessageViewHolder3.onClick.invoke(messageListItem3);
                                        break;
                                    case 1:
                                        composableMessageViewHolder3.onLongClick.invoke(messageListItem3);
                                        break;
                                    default:
                                        composableMessageViewHolder3.onAvatarClick.invoke(messageListItem3);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(composableMessageViewHolder2) | gapComposer2.changedInstance(messageListItem2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                MessageListItem messageListItem3 = messageListItem2;
                                ComposableMessageViewHolder composableMessageViewHolder3 = composableMessageViewHolder2;
                                switch (i4) {
                                    case 0:
                                        composableMessageViewHolder3.onClick.invoke(messageListItem3);
                                        break;
                                    case 1:
                                        composableMessageViewHolder3.onLongClick.invoke(messageListItem3);
                                        break;
                                    default:
                                        composableMessageViewHolder3.onAvatarClick.invoke(messageListItem3);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function02 = (Function0) rememberedValue2;
                    boolean changedInstance3 = gapComposer2.changedInstance(composableMessageViewHolder2) | gapComposer2.changedInstance(messageListItem2);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Function0() { // from class: com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                MessageListItem messageListItem3 = messageListItem2;
                                ComposableMessageViewHolder composableMessageViewHolder3 = composableMessageViewHolder2;
                                switch (i4) {
                                    case 0:
                                        composableMessageViewHolder3.onClick.invoke(messageListItem3);
                                        break;
                                    case 1:
                                        composableMessageViewHolder3.onLongClick.invoke(messageListItem3);
                                        break;
                                    default:
                                        composableMessageViewHolder3.onAvatarClick.invoke(messageListItem3);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function03 = (Function0) rememberedValue3;
                    boolean changedInstance4 = gapComposer2.changedInstance(composableMessageViewHolder2) | gapComposer2.changedInstance(messageListItem2);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new DI$$ExternalSyntheticLambda0(20, composableMessageViewHolder2, messageListItem2);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Validate.MessageItemContent(messageListItem2, this.f$0, this.f$3, contactRepository, defaultAvatarMonogramCreator, function0, function02, function03, (Function1) rememberedValue4, (MessageListAppearance) composableMessageViewHolder2.appearance.invoke(), gapComposer2, 1073741832);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(ComposableMessageViewHolder composableMessageViewHolder, MessageListItem messageListItem, boolean z, boolean z2) {
        this.f$1 = composableMessageViewHolder;
        this.f$2 = messageListItem;
        this.f$0 = z;
        this.f$3 = z2;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(boolean z, Function1 function1, Modifier modifier, boolean z2, int i) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$3 = z2;
    }
}
