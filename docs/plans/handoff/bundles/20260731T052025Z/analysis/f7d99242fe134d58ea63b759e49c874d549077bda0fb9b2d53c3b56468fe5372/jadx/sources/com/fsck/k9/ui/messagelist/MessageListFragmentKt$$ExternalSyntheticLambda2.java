package com.fsck.k9.ui.messagelist;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Modifier f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda2(Function1 function1, Function0 function0, Function0 function02, Function0 function03, AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel, BrandNameProvider brandNameProvider, Modifier modifier, int i) {
        this.f$2 = function1;
        this.f$0 = function0;
        this.f$1 = function02;
        this.f$5 = function03;
        this.f$3 = accountAutoDiscoveryViewModel;
        this.f$6 = brandNameProvider;
        this.f$4 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$6;
        Object obj4 = this.f$3;
        Object obj5 = this.f$5;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                MessageListLoaderKt.SortTypeList((SortCriteria) obj7, (ImmutableSet) obj6, this.f$2, (Function1) obj4, this.f$4, (ImmutableSet) obj5, (Function1) obj3, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(32769);
                AutoDiscoveryStringMapperKt.AccountAutoDiscoveryScreen(this.f$2, (Function0) obj7, (Function0) obj6, (Function0) obj5, (AccountAutoDiscoveryViewModel) obj4, (BrandNameProvider) obj3, this.f$4, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda2(SortCriteria sortCriteria, ImmutableSet immutableSet, Function1 function1, Function1 function12, Modifier modifier, ImmutableSet immutableSet2, Function1 function13, int i) {
        this.f$0 = sortCriteria;
        this.f$1 = immutableSet;
        this.f$2 = function1;
        this.f$3 = function12;
        this.f$4 = modifier;
        this.f$5 = immutableSet2;
        this.f$6 = function13;
    }
}
