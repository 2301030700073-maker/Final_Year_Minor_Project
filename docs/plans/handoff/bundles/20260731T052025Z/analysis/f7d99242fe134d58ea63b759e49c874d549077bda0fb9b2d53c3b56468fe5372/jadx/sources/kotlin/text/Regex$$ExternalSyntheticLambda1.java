package kotlin.text;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.widget.Toast;
import androidx.camera.view.TextureViewImplementation$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.window.layout.FoldingFeature$State;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.adapter.WindowBackend;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.SharedNetworkCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import app.k9mail.autodiscovery.autoconfig.AutoconfigParserException;
import app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult;
import app.k9mail.autodiscovery.autoconfig.ClientConfigParser;
import app.k9mail.core.ui.compose.common.window.FoldableState;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.migration.provider.SettingsProvider;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import coil3.ComponentRegistry;
import coil3.fetch.Fetcher;
import coil3.gif.AnimatedImageDecoder;
import coil3.network.DeDupeConcurrentRequestStrategy;
import coil3.size.ViewSizeResolver;
import com.bytehamster.lib.preferencesearch.SearchConfiguration;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.controller.DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.push.AccountPushController;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.ui.messageview.AttachmentListItemModel;
import com.fsck.k9.ui.messageview.AttachmentViewCallback;
import com.fsck.k9.ui.messageview.MessageContainerView;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.Library;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity;
import com.jcraft.jzlib.Adler32;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.KClass;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.feature.navigation.drawer.dropdown.DropDownDrawer;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Regex$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Regex$$ExternalSyntheticLambda1(NavBackStackEntry navBackStackEntry, NavController$NavControllerNavigatorState navController$NavControllerNavigatorState, FragmentNavigator fragmentNavigator, Fragment fragment) {
        this.$r8$classId = 1;
        this.f$0 = navController$NavControllerNavigatorState;
        this.f$1 = fragment;
    }

    private final Object invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0() {
        BaseConstraintController baseConstraintController = (BaseConstraintController) this.f$0;
        BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = (BaseConstraintController$track$1$listener$1) this.f$1;
        ConstraintTracker constraintTracker = baseConstraintController.tracker;
        constraintTracker.getClass();
        synchronized (constraintTracker.lock) {
            if (((LinkedHashSet) constraintTracker.listeners).remove(baseConstraintController$track$1$listener$1) && ((LinkedHashSet) constraintTracker.listeners).isEmpty()) {
                constraintTracker.stopTracking();
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        AutoconfigParserResult.ParserError parserError;
        List add$lambda$3$0;
        Drawable decode$lambda$0;
        Unit apply$lambda$2;
        switch (this.$r8$classId) {
            case 0:
                return ((Regex) this.f$0).find(0, (CharSequence) this.f$1);
            case 1:
                NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = (NavController$NavControllerNavigatorState) this.f$0;
                Fragment fragment = (Fragment) this.f$1;
                for (NavBackStackEntry navBackStackEntry : (Iterable) navController$NavControllerNavigatorState.transitionsInProgress.$$delegate_0.getValue()) {
                    if (FragmentNavigator.isLoggingEnabled()) {
                        Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + fragment + " viewmodel being cleared");
                    }
                    navController$NavControllerNavigatorState.markTransitionComplete(navBackStackEntry);
                }
                return Unit.INSTANCE;
            case 2:
                ((WindowBackend) ((FoldingFeature$State) this.f$0).description).unregisterLayoutChangeCallback((TextureViewImplementation$$ExternalSyntheticLambda3) this.f$1);
                return Unit.INSTANCE;
            case 3:
                DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0 = (DI$$ExternalSyntheticLambda0) this.f$0;
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f$1;
                synchronized (SharedNetworkCallback.requestsLock) {
                    LinkedHashMap linkedHashMap = SharedNetworkCallback.requests;
                    linkedHashMap.remove(dI$$ExternalSyntheticLambda0);
                    if (linkedHashMap.isEmpty()) {
                        Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister shared callback");
                        connectivityManager.unregisterNetworkCallback(SharedNetworkCallback.INSTANCE);
                        SharedNetworkCallback.isBlocked = null;
                        SharedNetworkCallback.cachedCapabilities = null;
                        SharedNetworkCallback.capabilitiesInitialized = false;
                    }
                }
                return Unit.INSTANCE;
            case 4:
                return invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0();
            case 5:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$0;
                UUID uuid = (UUID) this.f$1;
                WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
                workDatabase.getClass();
                workDatabase.runInTransaction(new Processor$$ExternalSyntheticLambda2(7, workManagerImpl, uuid));
                Schedulers.schedule(workManagerImpl.mConfiguration, workManagerImpl.mWorkDatabase, workManagerImpl.mSchedulers);
                return Unit.INSTANCE;
            case 6:
                String str = (String) this.f$0;
                WorkManagerImpl workManagerImpl2 = (WorkManagerImpl) this.f$1;
                WorkDatabase workDatabase2 = workManagerImpl2.mWorkDatabase;
                workDatabase2.getClass();
                workDatabase2.runInTransaction(new Processor$$ExternalSyntheticLambda1(workDatabase2, str, workManagerImpl2, 15));
                Schedulers.schedule(workManagerImpl2.mConfiguration, workDatabase2, workManagerImpl2.mSchedulers);
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                InputStream inputStream = (InputStream) this.f$0;
                EmailAddress emailAddress = (EmailAddress) this.f$1;
                inputStream.getClass();
                emailAddress.getClass();
                try {
                    return new ClientConfigParser(inputStream, emailAddress).parse();
                } catch (AutoconfigParserException e) {
                    parserError = new AutoconfigParserResult.ParserError(e);
                    return parserError;
                } catch (XmlPullParserException e2) {
                    parserError = new AutoconfigParserResult.ParserError(new AutoconfigParserException("Error parsing Autoconfig XML", e2));
                    return parserError;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) this.f$0;
                FoldableState foldableState = (FoldableState) this.f$1;
                return "Window layout changed: foldingFeature=" + hardwareFoldingFeature + ", state=" + (hardwareFoldingFeature != null ? hardwareFoldingFeature.state : null) + ", newState=" + foldableState;
            case 9:
                FoldableStateObserver foldableStateObserver = (FoldableStateObserver) this.f$0;
                FoldableState foldableState2 = (FoldableState) this.f$1;
                return "Foldable state changed: " + foldableStateObserver._foldableState.getValue() + " -> " + foldableState2;
            case 10:
                NavHostController navHostController = (NavHostController) this.f$0;
                if (((Boolean) ((MutableState) this.f$1).getValue()).booleanValue()) {
                    navHostController.navigate("outgoing-server/validation", new KoinModuleKt$$ExternalSyntheticLambda0(9));
                } else {
                    navHostController.navigate("outgoing-server/config", new KoinModuleKt$$ExternalSyntheticLambda0(10));
                }
                return Unit.INSTANCE;
            case 11:
                SettingsProvider settingsProvider = (SettingsProvider) this.f$0;
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) this.f$1;
                List accounts = ((Preferences) ((LegacyAccountDtoManager) settingsProvider.accountManager$delegate.getValue())).getAccounts();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it = accounts.iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(((LegacyAccountDto) it.next()).uuid);
                }
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                try {
                    ((SettingsExporter) settingsProvider.settingsExporter$delegate.getValue()).exportPreferences(autoCloseOutputStream, true, linkedHashSet, true);
                    autoCloseOutputStream.close();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(autoCloseOutputStream, th);
                        throw th2;
                    }
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                NoOpOnboardingMigrationManager noOpOnboardingMigrationManager = (NoOpOnboardingMigrationManager) this.f$0;
                NavHostController navHostController2 = (NavHostController) this.f$1;
                noOpOnboardingMigrationManager.getClass();
                NavHostController.navigate$default(navHostController2, "account_setup");
                return Unit.INSTANCE;
            case 13:
                ((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) this.f$0).invoke(new OnboardingRoute.Onboarding((String) ((MutableState) this.f$1).getValue()));
                return Unit.INSTANCE;
            case 14:
                ((ListenableMessageStore) this.f$0).folderSettingsListener.remove((DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0) this.f$1);
                return Unit.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                ((ListenableMessageStore) this.f$0).folderSettingsListener.remove((DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0) this.f$1);
                return Unit.INSTANCE;
            case 16:
                add$lambda$3$0 = ComponentRegistry.Builder.add$lambda$3$0((Fetcher.Factory) this.f$0, (KClass) this.f$1);
                return add$lambda$3$0;
            case 17:
                decode$lambda$0 = AnimatedImageDecoder.decode$lambda$0((AnimatedImageDecoder) this.f$0, (Ref$BooleanRef) this.f$1);
                return decode$lambda$0;
            case 18:
                apply$lambda$2 = DeDupeConcurrentRequestStrategy.apply$lambda$2((DeDupeConcurrentRequestStrategy) this.f$0, (String) this.f$1);
                return apply$lambda$2;
            case 19:
                ((Preferences) this.f$0).accountsChangeListeners.remove((Preferences$getAccountFlow$1$$ExternalSyntheticLambda0) this.f$1);
                return Unit.INSTANCE;
            case 20:
                ((Preferences) this.f$0).accountsChangeListeners.remove((Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0) this.f$1);
                return Unit.INSTANCE;
            case 21:
                return "drawer = " + ((DropDownDrawer) this.f$0) + ", localSearch = " + ((MessageHomeActivity) this.f$1).search;
            case 22:
                ((MessagingController) ((DefaultMessageCountsProvider) this.f$0).messagingControllerRegistry).removeListener((DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1) this.f$1);
                return Unit.INSTANCE;
            case 23:
                AccountPushController accountPushController = (AccountPushController) this.f$0;
                ArrayList arrayList = (ArrayList) this.f$1;
                return "Updating push folders for account " + accountPushController.accountId + ": " + arrayList;
            case 24:
                return ViewSizeResolver.CC.m("Loading key '", (String) this.f$0, "', value = '", (String) this.f$1, "'");
            case 25:
                return "SetupArchiveFolderDialogFragment fragment listener triggered with key: " + ((String) this.f$0) + " and bundle: " + ((Bundle) this.f$1);
            case 26:
                MessageContainerView messageContainerView = (MessageContainerView) this.f$0;
                AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) this.f$1;
                AttachmentViewCallback attachmentViewCallback = messageContainerView.attachmentCallback;
                if (attachmentViewCallback != null) {
                    ((MessageViewFragment) attachmentViewCallback).onViewAttachment(attachmentViewInfo);
                }
                return Unit.INSTANCE;
            case 27:
                MutableState mutableState = (MutableState) this.f$0;
                MessageViewFragment messageViewFragment = (MessageViewFragment) this.f$1;
                ListIterator listIterator = ((AbstractPersistentList) mutableState.getValue()).listIterator(0);
                while (listIterator.hasNext()) {
                    messageViewFragment.onSaveAttachment(((AttachmentListItemModel) listIterator.next()).attachment);
                }
                return Unit.INSTANCE;
            case 28:
                Context context = (Context) this.f$0;
                try {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((Library) this.f$1).url)));
                } catch (ActivityNotFoundException unused) {
                    Toast.makeText(context, R.string.error_activity_not_found, 0).show();
                }
                return Unit.INSTANCE;
            default:
                GeneralSettingsActivity generalSettingsActivity = (GeneralSettingsActivity) this.f$0;
                SearchConfiguration searchConfiguration = (SearchConfiguration) this.f$1;
                Iterator it2 = generalSettingsActivity.fontPreferenceKeys.iterator();
                while (it2.hasNext()) {
                    searchConfiguration.bannedKeys.add((String) it2.next());
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ Regex$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    public /* synthetic */ Regex$$ExternalSyntheticLambda1(Adler32 adler32, InputStream inputStream, EmailAddress emailAddress) {
        this.$r8$classId = 7;
        this.f$0 = inputStream;
        this.f$1 = emailAddress;
    }
}
