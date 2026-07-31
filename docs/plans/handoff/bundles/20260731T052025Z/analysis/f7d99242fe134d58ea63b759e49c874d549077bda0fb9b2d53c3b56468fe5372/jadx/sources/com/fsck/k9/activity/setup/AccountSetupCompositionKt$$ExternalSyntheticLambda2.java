package com.fsck.k9.activity.setup;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.core.android.common.contact.ContactRepository;
import com.fsck.k9.ui.messagelist.MessageListAppearance;
import com.fsck.k9.ui.messagelist.MessageListItem;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupCompositionKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Function1 f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda2(MessageListItem messageListItem, boolean z, boolean z2, ContactRepository contactRepository, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator, Function0 function0, Function0 function02, Function0 function03, Function1 function1, MessageListAppearance messageListAppearance, int i) {
        this.f$0 = messageListItem;
        this.f$3 = z;
        this.f$5 = z2;
        this.f$1 = contactRepository;
        this.f$2 = defaultAvatarMonogramCreator;
        this.f$4 = function0;
        this.f$6 = function02;
        this.f$7 = function03;
        this.f$8 = function1;
        this.f$9 = messageListAppearance;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$9;
        Object obj4 = this.f$7;
        Object obj5 = this.f$6;
        Object obj6 = this.f$4;
        Object obj7 = this.f$2;
        Object obj8 = this.f$1;
        Object obj9 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                Utf8.SafeProcessor.AccountSetupCompositionScreen((String) obj9, (String) obj8, (String) obj7, this.f$3, (String) obj6, this.f$5, (AbstractPersistentList) obj5, (Pair) obj4, this.f$8, (Modifier) obj3, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1073741833);
                Validate.MessageItemContent((MessageListItem) obj9, this.f$3, this.f$5, (ContactRepository) obj8, (DefaultAvatarMonogramCreator) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, this.f$8, (MessageListAppearance) obj3, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda2(String str, String str2, String str3, boolean z, String str4, boolean z2, AbstractPersistentList abstractPersistentList, Pair pair, Function1 function1, Modifier modifier, int i) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = str3;
        this.f$3 = z;
        this.f$4 = str4;
        this.f$5 = z2;
        this.f$6 = abstractPersistentList;
        this.f$7 = pair;
        this.f$8 = function1;
        this.f$9 = modifier;
    }
}
