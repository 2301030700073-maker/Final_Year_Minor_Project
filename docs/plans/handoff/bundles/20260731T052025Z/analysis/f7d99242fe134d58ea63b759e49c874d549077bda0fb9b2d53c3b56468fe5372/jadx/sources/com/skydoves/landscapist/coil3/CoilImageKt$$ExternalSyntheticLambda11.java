package com.skydoves.landscapist.coil3;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavBackStackEntry;
import androidx.room.driver.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteProgram;
import app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.settings.p000import.ui.ImportListItem;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Option;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.choosefolder.FolderListItem;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.settings.AccountItem;
import com.fsck.k9.ui.settings.IntentItem;
import com.fsck.k9.ui.settings.SettingsActionItem;
import com.fsck.k9.ui.settings.SettingsListFragment;
import com.fsck.k9.ui.settings.UrlActionItem;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import com.fsck.k9.ui.settings.export.CheckBoxItem;
import com.fsck.k9.ui.settings.export.SettingsExportFragment;
import com.fsck.k9.ui.settings.export.SettingsExportUiModel;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.export.SettingsListItem;
import com.fsck.k9.ui.settings.export.StatusText;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.skydoves.landscapist.ImageLoadState;
import com.skydoves.landscapist.ImageOptions;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoilImageKt$$ExternalSyntheticLambda11 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda11(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        Unit CoilThumbnail_4goxYXU$lambda$0;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                CoilThumbnail_4goxYXU$lambda$0 = CoilImageKt.CoilThumbnail_4goxYXU$lambda$0((ImageOptions) obj5, (BoxWithConstraintsScope) obj, (ImageLoadState) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                return CoilThumbnail_4goxYXU$lambda$0;
            case 1:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                LazyGridItemScopeImpl lazyGridItemScopeImpl = (LazyGridItemScopeImpl) obj;
                ((Integer) obj2).getClass();
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(lazyGridItemScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 131) != 130)) {
                    composableLambdaImpl.invoke(lazyGridItemScopeImpl, gapComposer, Integer.valueOf(intValue & 14));
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                AndroidParagraphIntrinsics androidParagraphIntrinsics = (AndroidParagraphIntrinsics) obj5;
                TypefaceResult$Immutable m708resolveDPcqOEQ = ((FontFamilyResolverImpl) androidParagraphIntrinsics.fontFamilyResolver).m708resolveDPcqOEQ((SystemFontFamily) obj, (FontWeight) obj2, ((FontStyle) obj3).value, ((FontSynthesis) obj4).value);
                if (m708resolveDPcqOEQ instanceof TypefaceResult$Immutable) {
                    Object obj6 = m708resolveDPcqOEQ.value;
                    obj6.getClass();
                    return (Typeface) obj6;
                }
                MenuHostHelper menuHostHelper = new MenuHostHelper(m708resolveDPcqOEQ, androidParagraphIntrinsics.resolvedTypefaces);
                androidParagraphIntrinsics.resolvedTypefaces = menuHostHelper;
                Object obj7 = menuHostHelper.mProviderToLifecycleContainers;
                obj7.getClass();
                return (Typeface) obj7;
            case 3:
                SQLiteCursorDriver sQLiteCursorDriver = (SQLiteCursorDriver) obj2;
                String str = (String) obj3;
                SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
                sQLiteQuery.getClass();
                FrameworkSQLiteProgram frameworkSQLiteProgram = new FrameworkSQLiteProgram(sQLiteQuery);
                SupportSQLiteStatement.SupportAndroidSQLiteStatement supportAndroidSQLiteStatement = (SupportSQLiteStatement.SupportAndroidSQLiteStatement) ((Fragment.AnonymousClass7) obj5).this$0;
                int length = supportAndroidSQLiteStatement.bindingTypes.length;
                for (int i2 = 1; i2 < length; i2++) {
                    int i3 = supportAndroidSQLiteStatement.bindingTypes[i2];
                    if (i3 == 1) {
                        frameworkSQLiteProgram.bindLong(i2, supportAndroidSQLiteStatement.longBindings[i2]);
                    } else if (i3 == 2) {
                        frameworkSQLiteProgram.bindDouble(supportAndroidSQLiteStatement.doubleBindings[i2], i2);
                    } else if (i3 == 3) {
                        String str2 = supportAndroidSQLiteStatement.stringBindings[i2];
                        str2.getClass();
                        frameworkSQLiteProgram.bindString(str2, i2);
                    } else if (i3 == 4) {
                        byte[] bArr = supportAndroidSQLiteStatement.blobBindings[i2];
                        bArr.getClass();
                        frameworkSQLiteProgram.bindBlob(i2, bArr);
                    } else if (i3 == 5) {
                        frameworkSQLiteProgram.bindNull(i2);
                    }
                }
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            case 4:
                ServerCertificateErrorContract$State serverCertificateErrorContract$State = (ServerCertificateErrorContract$State) obj5;
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                if ((intValue2 & 48) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(booleanValue) ? 32 : 16;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                    gapComposer2.skipToGroupEnd();
                } else if (booleanValue) {
                    gapComposer2.startReplaceGroup(1288681892);
                    FormattedServerCertificateError formattedServerCertificateError = serverCertificateErrorContract$State.certificateError;
                    formattedServerCertificateError.getClass();
                    IntRectKt.ServerCertificateView(formattedServerCertificateError.serverCertificateProperties, null, null, null, gapComposer2, 8);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1288866404);
                    gapComposer2.end(false);
                }
                return unit;
            case 5:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OAuthBearer.OnboardingNavHost((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj5, null, (Composer) obj3, 0);
                return unit;
            case 6:
                int intValue3 = ((Integer) obj4).intValue();
                ((ItemAdapter) obj2).getClass();
                ((ImportListItem) obj3).getClass();
                ((SettingsImportFragment) obj5).getViewModel().onSettingsListItemClicked(intValue3);
                return Boolean.TRUE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ChooseFolderActivity chooseFolderActivity = (ChooseFolderActivity) obj5;
                FolderListItem folderListItem = (FolderListItem) obj3;
                ((Integer) obj4).getClass();
                int i4 = ChooseFolderActivity.$r8$clinit;
                ((ItemAdapter) obj2).getClass();
                folderListItem.getClass();
                long j = folderListItem.databaseId;
                String str3 = folderListItem.displayName;
                Intent intent = new Intent();
                intent.putExtra("selectedFolderId", j);
                intent.putExtra("folderDisplayName", str3);
                intent.putExtra("messageReference", chooseFolderActivity.messageReference);
                chooseFolderActivity.setResult(-1, intent);
                chooseFolderActivity.finish();
                return Boolean.TRUE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ManageFoldersFragment manageFoldersFragment = (ManageFoldersFragment) obj5;
                com.fsck.k9.ui.managefolders.FolderListItem folderListItem2 = (com.fsck.k9.ui.managefolders.FolderListItem) obj3;
                ((Integer) obj4).getClass();
                ((ItemAdapter) obj2).getClass();
                folderListItem2.getClass();
                long j2 = folderListItem2.folderId;
                LegacyAccountDto legacyAccountDto = manageFoldersFragment.account;
                if (legacyAccountDto != null) {
                    MathKt.findNavController(manageFoldersFragment).navigate(com.fsck.k9.R.id.action_manageFoldersScreen_to_folderSettingsScreen, Util.bundleOf(new Pair("account", legacyAccountDto.uuid), new Pair("folderId", Long.valueOf(j2))));
                    return Boolean.TRUE;
                }
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            case 9:
                SettingsListFragment settingsListFragment = (SettingsListFragment) obj5;
                AbstractItem abstractItem = (AbstractItem) obj3;
                ((Integer) obj4).getClass();
                ((ItemAdapter) obj2).getClass();
                abstractItem.getClass();
                if (abstractItem instanceof AccountItem) {
                    LegacyAccountDto legacyAccountDto2 = ((AccountItem) abstractItem).account;
                    int i5 = AccountSettingsActivity.$r8$clinit;
                    Option.AnonymousClass1.start(settingsListFragment.requireActivity(), legacyAccountDto2.uuid, null);
                } else {
                    if (abstractItem instanceof IntentItem) {
                        throw null;
                    }
                    if (abstractItem instanceof SettingsActionItem) {
                        MathKt.findNavController(settingsListFragment).navigate(((SettingsActionItem) abstractItem).navigationAction, (Bundle) null);
                    } else if (abstractItem instanceof UrlActionItem) {
                        try {
                            settingsListFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((UrlActionItem) abstractItem).url)));
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(settingsListFragment.requireContext(), com.fsck.k9.R.string.error_activity_not_found, 0).show();
                        }
                    }
                }
                return Boolean.TRUE;
            case 10:
                CheckBoxItem checkBoxItem = (CheckBoxItem) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((ItemAdapter) obj2).getClass();
                checkBoxItem.getClass();
                SettingsExportViewModel viewModel = ((SettingsExportFragment) obj5).getViewModel();
                boolean z = !checkBoxItem.isSelected;
                viewModel.savedSelection = null;
                SettingsExportUiModel settingsExportUiModel = viewModel.uiModel;
                settingsExportUiModel.getClass();
                ((SettingsListItem) settingsExportUiModel.settingsList.get(intValue4)).selected = z;
                settingsExportUiModel.statusText = StatusText.HIDDEN;
                settingsExportUiModel.isShareButtonVisible = false;
                settingsExportUiModel.updateExportButtonFromSelection();
                viewModel.uiModelLiveData.setValue(settingsExportUiModel);
                return Boolean.TRUE;
            case 11:
                Function1 function1 = (Function1) obj5;
                BannerGlobalVisual bannerGlobalVisual = (BannerGlobalVisual) obj2;
                Composer composer3 = (Composer) obj3;
                int intValue5 = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                if ((intValue5 & 48) == 0) {
                    intValue5 |= ((GapComposer) composer3).changed(bannerGlobalVisual) ? 32 : 16;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue5 & 1, (intValue5 & 145) != 144)) {
                    gapComposer3.skipToGroupEnd();
                } else if (bannerGlobalVisual != null) {
                    gapComposer3.startReplaceGroup(805745686);
                    InAppNotificationHostKt.BannerGlobalNotificationHostLayout(bannerGlobalVisual, function1, null, gapComposer3, (intValue5 >> 3) & 14);
                    gapComposer3.end(false);
                } else {
                    gapComposer3.startReplaceGroup(805898485);
                    gapComposer3.end(false);
                }
                return unit;
            default:
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj5;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry.getClass();
                Bundle arguments$navigation_common_release = navBackStackEntry.impl.getArguments$navigation_common_release();
                String string = arguments$navigation_common_release != null ? arguments$navigation_common_release.getString("accountId") : null;
                if (string == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Account ID must not be null when navigating to Permissions");
                    return null;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                boolean changed = gapComposer4.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda2) | gapComposer4.changed(string);
                Object rememberedValue = gapComposer4.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new SealedClassSerializer$$ExternalSyntheticLambda0(13, (Object) featureLauncherNavHostKt$$ExternalSyntheticLambda2, string);
                    gapComposer4.updateRememberedValue(rememberedValue);
                }
                Utf8.SafeProcessor.PermissionsScreen(null, null, (Function0) rememberedValue, gapComposer4, 0);
                return unit;
        }
    }
}
