package com.fsck.k9.ui.settings;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import com.skydoves.landscapist.LocalImageSourceFileKt;
import com.skydoves.landscapist.components.ImageComponent;
import java.io.File;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlin.text.CharsKt__CharKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.changelog.internal.ReleaseUiModel;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import okhttp3.Handshake;
import org.jsoup.Jsoup;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragmentKt$$ExternalSyntheticLambda7 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda7(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit unit;
        ImageVector imageVector;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit2 = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                DebugUtils.LibraryItem((Library) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 1:
                ((Integer) obj2).getClass();
                OAuthBearer.OnboardingNavHost((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj4, (NoOpOnboardingMigrationManager) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 2:
                ((Integer) obj2).getClass();
                ActionBar.IconWithPermissionStateOverlay((ImageVector) obj4, (PermissionsContract$UiPermissionState) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 3:
                Function0 function0 = (Function0) obj4;
                Function0 function02 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    WelcomeScreenKt.WelcomeFooterSection(function0, function02, null, gapComposer, 0);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit2;
            case 4:
                ((Integer) obj2).getClass();
                ((K9FeatureThemeProvider) obj4).WithTheme$1((ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(55));
                return unit2;
            case 5:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj4;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj3;
                String str = (String) obj;
                String[] strArr = (String[]) obj2;
                str.getClass();
                strArr.getClass();
                if (ref$BooleanRef.element) {
                    Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(id) FROM folders WHERE integrate = 1 AND id ".concat(str), strArr);
                    try {
                        if (!rawQuery.moveToFirst()) {
                            ref$BooleanRef.element = false;
                        } else if (rawQuery.getInt(0) != strArr.length) {
                            ref$BooleanRef.element = false;
                        }
                        rawQuery.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(rawQuery, th);
                            throw th2;
                        }
                    }
                }
                return unit2;
            case 6:
                String str2 = (String) obj;
                String[] strArr2 = (String[]) obj2;
                str2.getClass();
                strArr2.getClass();
                ((SQLiteDatabase) obj4).update("messages", (ContentValues) obj3, "id ".concat(str2), strArr2);
                return unit2;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SQLiteDatabase sQLiteDatabase2 = (SQLiteDatabase) obj4;
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj3;
                String str3 = (String) obj;
                String[] strArr3 = (String[]) obj2;
                str3.getClass();
                strArr3.getClass();
                Cursor query = sQLiteDatabase2.query("messages", new String[]{"id", "uid"}, "id ".concat(str3), strArr3, null, null, null);
                while (query.moveToNext()) {
                    try {
                        linkedHashMap.put(Long.valueOf(query.getLong(0)), query.getString(1));
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.closeFinally(query, th3);
                            throw th4;
                        }
                    }
                }
                query.close();
                return unit2;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MessageViewFragment messageViewFragment = (MessageViewFragment) obj4;
                SizeFormatter sizeFormatter = (SizeFormatter) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    MutableState collectAsState = Updater.collectAsState(messageViewFragment.attachmentListBottomSheetState, gapComposer2);
                    if (((AbstractPersistentList) collectAsState.getValue()).isEmpty()) {
                        gapComposer2.startReplaceGroup(2071529460);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(2070473321);
                        ((K9FeatureThemeProvider) ((FeatureThemeProvider) messageViewFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-1020458437, new SegmentedButtonKt$$ExternalSyntheticLambda4(sizeFormatter, messageViewFragment, collectAsState, 19), gapComposer2), gapComposer2, 6);
                        gapComposer2.end(false);
                    }
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit2;
            case 9:
                String str4 = (String) obj4;
                NotificationActionsReorderController notificationActionsReorderController = (NotificationActionsReorderController) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
                    long j = gapComposer3.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, fillElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer3, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal)).getClass();
                    Data.Companion.m825TextBodyMediumZHfKjFs(str4, OffsetKt.m221paddingqDBjuR0(fillElement2, 16.0f, 16.0f, 16.0f, 8.0f), 0L, 0, 0, (Function1) null, gapComposer3, 0, 124);
                    NotificationListItemKt.NotificationActionsList(notificationActionsReorderController, gapComposer3, 8);
                    gapComposer3.end(true);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit2;
            case 10:
                ((Integer) obj2).getClass();
                LocalImageSourceFileKt.ProvideImageSourceFile((File) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                return unit2;
            case 11:
                ((Integer) obj2).getClass();
                ActionBar.ComposeWithComposablePlugins((ImageComponent) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                return unit2;
            case BasicTextKt.ShiftMeta /* 12 */:
                int intValue4 = ((Integer) obj).intValue();
                ((Setting) obj2).getClass();
                ((ParcelableSnapshotMutableIntState) obj4).setIntValue(intValue4);
                ((MutableState) obj3).setValue(Boolean.TRUE);
                return unit2;
            case 13:
                ((Integer) obj2).getClass();
                Handshake.Companion.AvatarImageSelection((InAppNotificationHostKt$$ExternalSyntheticLambda4) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 14:
                ((Integer) obj2).getClass();
                Jsoup.ReleaseComposable((ReleaseUiModel) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(9));
                return unit2;
            case OffsetKt.Horizontal /* 15 */:
                AttachmentUiItem attachmentUiItem = (AttachmentUiItem) obj4;
                Function0 function03 = (Function0) obj3;
                Composer composer4 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal2)).getClass();
                    Modifier m221paddingqDBjuR0 = OffsetKt.m221paddingqDBjuR0(companion, 16.0f, 8.0f, 8.0f, 8.0f);
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal2)).getClass();
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(32.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.CenterVertically, gapComposer4, 48);
                    long j2 = gapComposer4.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, m221paddingqDBjuR0);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer4.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer4, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i3);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer4, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer4, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    if ((attachmentUiItem instanceof AttachmentUiItem.File) || (attachmentUiItem instanceof AttachmentUiItem.InlinedFile)) {
                        imageVector = Icons$Outlined.Description;
                    } else {
                        if (!(attachmentUiItem instanceof AttachmentUiItem.InlinedImage) && !(attachmentUiItem instanceof AttachmentUiItem.RemoteImage)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        imageVector = Icons$Outlined.Image;
                    }
                    ImageVector imageVector2 = imageVector;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ThemeColorSchemeKt.LocalThemeColorScheme;
                    AtomicFU.m1009IconxqIIw2o(imageVector2, null, new Color(((ThemeColorScheme) gapComposer4.consume(staticProvidableCompositionLocal3)).primary), gapComposer4, 0, 6);
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer4, 0);
                    unit = unit2;
                    long j3 = gapComposer4.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, layoutWeightElement);
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m380setimpl(gapComposer4, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i4, gapComposer4, composeUiNode$Companion$SetModifier$13, gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer4, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    String filename = attachmentUiItem.getFilename();
                    if (filename == null) {
                        gapComposer4.startReplaceGroup(619658592);
                        filename = Operation$State.stringResource(gapComposer4, R.string.unnamed_attachment_title);
                        gapComposer4.end(false);
                    } else if (attachmentUiItem.getEncrypted()) {
                        gapComposer4.startReplaceGroup(619662242);
                        filename = Operation$State.stringResource(gapComposer4, R.string.encrypted_attachment_title);
                        gapComposer4.end(false);
                    } else {
                        gapComposer4.startReplaceGroup(619665143);
                        gapComposer4.end(false);
                    }
                    Data.Companion.m825TextBodyMediumZHfKjFs(filename, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer4, 0, 126);
                    MathKt.m984TextBodySmallXl4FiYE(attachmentUiItem.getFormattedSize(), null, ((ThemeColorScheme) gapComposer4.consume(staticProvidableCompositionLocal3)).primary, null, 0, 0, gapComposer4, 0, 58);
                    gapComposer4.end(true);
                    IntRectKt.ButtonIcon(function03, attachmentUiItem.getEncrypted() ? Icons$Outlined.Lock : Icons$Outlined.Download, null, false, null, null, gapComposer4, 0, 60);
                    gapComposer4.end(true);
                } else {
                    unit = unit2;
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 16:
                ((Integer) obj2).getClass();
                AttachmentCardKt.AttachmentThumbnail((AttachmentUiItem) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 17:
                ((Integer) obj2).getClass();
                Handshake.Companion.FolderContent((DrawerContract$State) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 18:
                ((Integer) obj2).getClass();
                Hex.AccountLabel((DisplayAccount) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit2;
            case 19:
                BannerGlobalVisual bannerGlobalVisual = (BannerGlobalVisual) obj4;
                Function1 function1 = (Function1) obj3;
                Composer composer5 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    NotificationAction notificationAction = bannerGlobalVisual.action;
                    if (notificationAction == null) {
                        gapComposer5.startReplaceGroup(1798777302);
                        gapComposer5.end(false);
                    } else {
                        gapComposer5.startReplaceGroup(1798777303);
                        CharsKt__CharKt.ResolvedNotificationActionButton(notificationAction, function1, TestTagKt.testTag(companion, "banner_global_action"), gapComposer5, 392);
                        gapComposer5.end(false);
                    }
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit2;
            default:
                NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0 = (NavController$$ExternalSyntheticLambda0) obj4;
                ThundermailContract$State thundermailContract$State = (ThundermailContract$State) obj3;
                Composer composer6 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    Object rememberedValue = gapComposer6.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer6.updateRememberedValue(rememberedValue);
                    }
                    DebugUtils.WizardNavigationBar((Function0) rememberedValue, navController$$ExternalSyntheticLambda0, null, null, null, new WizardNavigationBarState(5, false, false, thundermailContract$State.error != null), gapComposer6, 6, 28);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit2;
        }
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda7(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
