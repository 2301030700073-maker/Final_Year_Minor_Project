package com.fsck.k9.ui.settings.notificationactions;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.common.notification.NotificationActionTokens;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationActionsSettingsFragment extends Fragment {
    public ArrayList actionOrder;
    public int cutoff;
    public final Lazy generalSettingsManager$delegate;
    public final Lazy themeProvider$delegate;

    public NotificationActionsSettingsFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsFragment$special$$inlined$inject$default$1
            public final /* synthetic */ NotificationActionsSettingsFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                NotificationActionsSettingsFragment notificationActionsSettingsFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(notificationActionsSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(notificationActionsSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.themeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsFragment$special$$inlined$inject$default$1
            public final /* synthetic */ NotificationActionsSettingsFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                NotificationActionsSettingsFragment notificationActionsSettingsFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(notificationActionsSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(notificationActionsSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                }
            }
        });
        MessageNotificationAction.Companion.getClass();
        List list = NotificationActionTokens.DEFAULT_ORDER;
        EnumEntriesList enumEntriesList = MessageNotificationAction.$ENTRIES;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(enumEntriesList, 10));
        Iterator it = enumEntriesList.iterator();
        while (it.hasNext()) {
            MessageNotificationAction messageNotificationAction = (MessageNotificationAction) it.next();
            arrayList.add(new Pair(messageNotificationAction.token, messageNotificationAction));
        }
        this.actionOrder = new ArrayList(NotificationActionTokens.normalizeOrder(list, arrayList));
        this.cutoff = 3;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        NotificationPreference notificationPreference = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).getConfig().notification;
        List list = NotificationActionTokens.DEFAULT_ORDER;
        List list2 = notificationPreference.messageActionsOrder;
        EnumEntriesList enumEntriesList = MessageNotificationAction.$ENTRIES;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(enumEntriesList, 10));
        Iterator it = enumEntriesList.iterator();
        while (it.hasNext()) {
            MessageNotificationAction messageNotificationAction = (MessageNotificationAction) it.next();
            arrayList.add(new Pair(messageNotificationAction.token, messageNotificationAction));
        }
        this.actionOrder = new ArrayList(NotificationActionTokens.normalizeOrder(list2, arrayList));
        this.cutoff = notificationPreference.messageActionsCutoff;
        ComposeView composeView = new ComposeView(requireContext(), null, 0, 6, null);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        composeView.setContent(new ComposableLambdaImpl(-1648181019, new NotificationActionsSettingsFragment$$ExternalSyntheticLambda0(this, 0), true));
        return composeView;
    }
}
