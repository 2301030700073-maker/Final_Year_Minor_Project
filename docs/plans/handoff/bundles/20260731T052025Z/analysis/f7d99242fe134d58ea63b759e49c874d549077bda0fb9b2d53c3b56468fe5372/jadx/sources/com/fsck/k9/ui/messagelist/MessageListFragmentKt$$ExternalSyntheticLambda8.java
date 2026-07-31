package com.fsck.k9.ui.messagelist;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageItemAvatarCircleColors;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda8 implements Function2 {
    public final /* synthetic */ int $r8$classId = 4;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(Function0 function0, Function0 function02, Function0 function03, boolean z, Modifier modifier, int i) {
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$3 = function03;
        this.f$0 = z;
        this.f$4 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                MessageListLoaderKt.SecondarySortOptions(this.f$0, (ImmutableSet) obj6, (Function1) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Utf8.SafeProcessor.PullToRefreshBox(this.f$0, (Function0) obj6, (Modifier) obj3, (Alignment) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, Updater.updateChangedFlags(24577));
                break;
            case 2:
                String str = (String) obj6;
                Long l = (Long) obj4;
                Function1 function1 = (Function1) obj5;
                String str2 = (String) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextFieldLabelKt.TextFieldOutlinedNumber(l, function1, SizeKt.FillWholeMaxWidth, str2, false, this.f$0, str != null, gapComposer, 384);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                TextInputKt.SwitchInput((String) obj6, this.f$0, (Function1) obj5, (Modifier) obj3, (PaddingValuesImpl) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                NotificationListItemKt.ArrowButton((ImageVector) obj6, (String) obj5, this.f$0, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                Jsoup.ChangelogScreen((ImmutableList) obj6, this.f$0, (Function1) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(9));
                break;
            case 6:
                ((Integer) obj2).getClass();
                MessageBodyContentKt.MessageItemAvatarCircle((Avatar) obj6, (MessageItemAvatarCircleColors) obj5, (Function0) obj4, (Modifier) obj3, this.f$0, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.AccountList((ImmutableList) obj6, (DisplayAccount) obj4, (Function1) obj5, this.f$0, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                CloseableKt.AccountSettingList((Function0) obj6, (Function0) obj5, (Function0) obj4, this.f$0, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(String str, Long l, Function1 function1, String str2, boolean z) {
        this.f$1 = str;
        this.f$3 = l;
        this.f$2 = function1;
        this.f$4 = str2;
        this.f$0 = z;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(String str, boolean z, Function1 function1, Modifier modifier, PaddingValuesImpl paddingValuesImpl, int i) {
        this.f$1 = str;
        this.f$0 = z;
        this.f$2 = function1;
        this.f$4 = modifier;
        this.f$3 = paddingValuesImpl;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(ImageVector imageVector, String str, boolean z, Function0 function0, Modifier modifier, int i) {
        this.f$1 = imageVector;
        this.f$2 = str;
        this.f$0 = z;
        this.f$3 = function0;
        this.f$4 = modifier;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(ImmutableList immutableList, DisplayAccount displayAccount, Function1 function1, boolean z, Modifier modifier, int i) {
        this.f$1 = immutableList;
        this.f$3 = displayAccount;
        this.f$2 = function1;
        this.f$0 = z;
        this.f$4 = modifier;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(ImmutableList immutableList, boolean z, Function1 function1, Function0 function0, Modifier modifier, int i) {
        this.f$1 = immutableList;
        this.f$0 = z;
        this.f$2 = function1;
        this.f$3 = function0;
        this.f$4 = modifier;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(Avatar avatar, MessageItemAvatarCircleColors messageItemAvatarCircleColors, Function0 function0, Modifier modifier, boolean z, int i) {
        this.f$1 = avatar;
        this.f$2 = messageItemAvatarCircleColors;
        this.f$3 = function0;
        this.f$4 = modifier;
        this.f$0 = z;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(boolean z, Function0 function0, Modifier modifier, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = z;
        this.f$1 = function0;
        this.f$4 = modifier;
        this.f$2 = alignment;
        this.f$3 = composableLambdaImpl;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda8(boolean z, ImmutableSet immutableSet, Function1 function1, Function1 function12, Modifier modifier, int i) {
        this.f$0 = z;
        this.f$1 = immutableSet;
        this.f$2 = function1;
        this.f$3 = function12;
        this.f$4 = modifier;
    }
}
