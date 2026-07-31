package okio;

import android.app.Application;
import android.content.Context;
import androidx.activity.result.ActivityResult;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.Density;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import app.k9mail.K9App;
import app.k9mail.feature.account.setup.navigation.AccountSetupRoute;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import java.io.ByteArrayInputStream;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.UnifiedAccountIdKt;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusEnter;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.Folder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListFooter;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogFragmentActionListener;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Event;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.Handshake;
import okhttp3.Headers;
import org.jetbrains.compose.resources.ImageCache$Vector;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.Jsoup;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;
import org.minidns.util.Hex;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ForwardingFileSystem$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ForwardingFileSystem$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SettingValue.Select.SelectOption selectOption;
        StateFlowImpl stateFlowImpl;
        Object value;
        int i = this.$r8$classId;
        boolean z = false;
        z = false;
        final int i2 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Path path = (Path) obj;
                path.getClass();
                return ((ForwardingFileSystem) obj2).onPathResult(path, "listRecursively");
            case 1:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj2;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                classSerialDescriptorBuilder.element("type", StringSerializer.descriptor);
                classSerialDescriptorBuilder.element("value", Handshake.Companion.buildSerialDescriptor$default("kotlinx.serialization.Polymorphic<" + ((ClassReference) polymorphicSerializer.baseClass).getSimpleName() + '>', SerialKind$CONTEXTUAL.INSTANCE, new SerialDescriptor[0]));
                List list = polymorphicSerializer._annotations;
                list.getClass();
                classSerialDescriptorBuilder.annotations = list;
                return unit;
            case 2:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder2.getClass();
                List list2 = ((ObjectSerializer) obj2)._annotations;
                list2.getClass();
                classSerialDescriptorBuilder2.annotations = list2;
                return unit;
            case 3:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj2;
                int intValue = ((Integer) obj).intValue();
                return serialDescriptor.getElementName(intValue) + ": " + serialDescriptor.getElementDescriptor(intValue).getSerialName();
            case 4:
                ContextualSerializer contextualSerializer = (ContextualSerializer) obj2;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder3 = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder3.getClass();
                classSerialDescriptorBuilder3.element("first", ((KSerializer) contextualSerializer.serializableClass).getDescriptor());
                classSerialDescriptorBuilder3.element("second", contextualSerializer.fallbackSerializer.getDescriptor());
                classSerialDescriptorBuilder3.element("third", ((KSerializer) contextualSerializer.typeArgumentsSerializers).getDescriptor());
                return unit;
            case 5:
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                Modifier.CC.m403drawRoundRectZuiqVtQ$default(drawScope, (SolidColor) obj2, 0L, 0L, (Float.floatToRawIntBits(3.0f) << 32) | (Float.floatToRawIntBits(3.0f) & 4294967295L), null, 246);
                return unit;
            case 6:
                ((ParcelableSnapshotMutableIntState) obj2).setIntValue(((Integer) obj).intValue());
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                final ReadingMailSettingsViewModel readingMailSettingsViewModel = (ReadingMailSettingsViewModel) obj2;
                LegacyAccount legacyAccount = (LegacyAccount) obj;
                String name = legacyAccount.showPictures.name();
                int hashCode = name.hashCode();
                if (hashCode == 74175084) {
                    if (name.equals("NEVER")) {
                        final int i3 = z ? 1 : 0;
                        selectOption = new SettingValue.Select.SelectOption("NEVER", new Function0() { // from class: net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i3;
                                ReadingMailSettingsViewModel readingMailSettingsViewModel2 = readingMailSettingsViewModel;
                                switch (i4) {
                                    case 0:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_never);
                                    case 1:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_always);
                                    default:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_only_from_contacts);
                                }
                            }
                        });
                        stateFlowImpl = readingMailSettingsViewModel._state;
                        do {
                            value = stateFlowImpl.getValue();
                        } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value, null, selectOption, legacyAccount.isMarkMessageAsReadOnView, 1)));
                        return unit;
                    }
                    DBUtil$$ExternalSyntheticBUOutline0.m((Object) legacyAccount.showPictures.name(), "Invalid showPictures value: ");
                    return null;
                }
                if (hashCode != 1883733493) {
                    if (hashCode == 1933739535 && name.equals("ALWAYS")) {
                        selectOption = new SettingValue.Select.SelectOption("ALWAYS", new Function0() { // from class: net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i2;
                                ReadingMailSettingsViewModel readingMailSettingsViewModel2 = readingMailSettingsViewModel;
                                switch (i4) {
                                    case 0:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_never);
                                    case 1:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_always);
                                    default:
                                        return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_only_from_contacts);
                                }
                            }
                        });
                        stateFlowImpl = readingMailSettingsViewModel._state;
                        do {
                            value = stateFlowImpl.getValue();
                        } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value, null, selectOption, legacyAccount.isMarkMessageAsReadOnView, 1)));
                        return unit;
                    }
                    DBUtil$$ExternalSyntheticBUOutline0.m((Object) legacyAccount.showPictures.name(), "Invalid showPictures value: ");
                    return null;
                }
                if (name.equals("ONLY_FROM_CONTACTS")) {
                    final int i4 = 2;
                    selectOption = new SettingValue.Select.SelectOption("ONLY_FROM_CONTACTS", new Function0() { // from class: net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i42 = i4;
                            ReadingMailSettingsViewModel readingMailSettingsViewModel2 = readingMailSettingsViewModel;
                            switch (i42) {
                                case 0:
                                    return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_never);
                                case 1:
                                    return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_always);
                                default:
                                    return ((AndroidResourceManager) readingMailSettingsViewModel2.resources).stringResource(R.string.account_settings_show_pictures_only_from_contacts);
                            }
                        }
                    });
                    stateFlowImpl = readingMailSettingsViewModel._state;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value, null, selectOption, legacyAccount.isMarkMessageAsReadOnView, 1)));
                    return unit;
                }
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) legacyAccount.showPictures.name(), "Invalid showPictures value: ");
                return null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                final ImmutableList immutableList = (ImmutableList) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(((AbstractCollection) immutableList).getSize(), new Latch$await$2$2(9, new KoinModuleKt$$ExternalSyntheticLambda0(3), immutableList), new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(z ? 1 : 0, immutableList), new ComposableLambdaImpl(802480018, new Function4() { // from class: net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i5;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj3;
                        int intValue2 = ((Number) obj4).intValue();
                        Composer composer = (Composer) obj5;
                        int intValue3 = ((Number) obj6).intValue();
                        if ((intValue3 & 6) == 0) {
                            i5 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue3;
                        } else {
                            i5 = intValue3;
                        }
                        if ((intValue3 & 48) == 0) {
                            i5 |= ((GapComposer) composer).changed(intValue2) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i5 & 1, (i5 & 147) != 146)) {
                            ReleaseUiModel releaseUiModel = (ReleaseUiModel) immutableList.get(intValue2);
                            gapComposer.startReplaceGroup(-1437666285);
                            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings), Modifier.Companion.$$INSTANCE, 24.0f, gapComposer);
                            Jsoup.ReleaseComposable(releaseUiModel, null, gapComposer, 8);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true));
                return unit;
            case 9:
                MessageListEvent.UpdateFooter updateFooter = (MessageListEvent.UpdateFooter) obj2;
                MessageListMetadata messageListMetadata = (MessageListMetadata) obj;
                messageListMetadata.getClass();
                if (updateFooter.footer != null && (!StringsKt.isBlank(r1))) {
                    z = true;
                }
                String str = updateFooter.footer;
                return MessageListMetadata.copy$default(messageListMetadata, null, null, null, null, null, new MessageListFooter(str != null ? str : "", z), false, 1791);
            case 10:
                ((MessageListPreferences) obj).getClass();
                return ((MessageListEvent.UpdatePreferences) obj2).preferences;
            case 11:
                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj;
                messageListMetadata2.getClass();
                return MessageListMetadata.copy$default(messageListMetadata2, null, null, null, null, ((MessageItemEvent$OnFocusEnter) obj2).message, null, false, 2015);
            case BasicTextKt.ShiftMeta /* 12 */:
                Folder folder = (Folder) obj2;
                MessageListMetadata messageListMetadata3 = (MessageListMetadata) obj;
                messageListMetadata3.getClass();
                return MessageListMetadata.copy$default(messageListMetadata3, folder, null, null, null, null, null, Intrinsics.areEqual(folder.account.id, UnifiedAccountIdKt.UnifiedAccountId), 1534);
            case 13:
                MessageListMetadata messageListMetadata4 = (MessageListMetadata) obj;
                messageListMetadata4.getClass();
                return MessageListMetadata.copy$default(messageListMetadata4, null, null, Okio.toImmutableMap(((MessageListEvent.SortCriteriaLoaded) obj2).sortCriteriaPerAccount), null, null, null, false, 2043);
            case 14:
                ErrorNotificationsDialogFragment errorNotificationsDialogFragment = (ErrorNotificationsDialogFragment) obj2;
                NotificationAction notificationAction = (NotificationAction) obj;
                notificationAction.getClass();
                errorNotificationsDialogFragment.dismissInternal(false, false);
                ErrorNotificationsDialogFragmentActionListener errorNotificationsDialogFragmentActionListener = errorNotificationsDialogFragment.listener;
                if (errorNotificationsDialogFragmentActionListener != null) {
                    errorNotificationsDialogFragmentActionListener.onNotificationActionClick(notificationAction);
                }
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj2;
                AccountSetupRoute accountSetupRoute = (AccountSetupRoute) obj;
                accountSetupRoute.getClass();
                if (accountSetupRoute instanceof AccountSetupRoute.AccountSetup) {
                    String str2 = ((AccountSetupRoute.AccountSetup) accountSetupRoute).accountId;
                    if (str2 == null) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Account ID must not be null when navigating to AccountSetupRoute.AccountSetup");
                        return null;
                    }
                    featureLauncherNavHostKt$$ExternalSyntheticLambda2.invoke(new ThundermailRoute.Permissions(str2));
                } else if (accountSetupRoute.equals(AccountSetupRoute.ThundermailScanQrCode.INSTANCE)) {
                    featureLauncherNavHostKt$$ExternalSyntheticLambda2.invoke(ThundermailRoute.ScanQrCode.INSTANCE);
                } else {
                    if (!accountSetupRoute.equals(AccountSetupRoute.ThundermailSignIn.INSTANCE)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    featureLauncherNavHostKt$$ExternalSyntheticLambda2.invoke(ThundermailRoute.SignInWithThundermail.INSTANCE);
                }
                return unit;
            case 16:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                ((ThundermailOAuthViewModel) obj2).event(new ThundermailContract$Event.OnOAuthResult(activityResult.data, activityResult.resultCode));
                return unit;
            case 17:
                Density density = (Density) obj2;
                byte[] bArr = (byte[]) obj;
                bArr.getClass();
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setNamespaceAware(true);
                Element documentElement = newInstance.newDocumentBuilder().parse(new InputSource(new ByteArrayInputStream(bArr))).getDocumentElement();
                documentElement.getClass();
                ElementImpl elementImpl = new ElementImpl(documentElement);
                density.getClass();
                Headers.Builder builder = new Headers.Builder(13);
                float parseDp = Hex.parseDp(StringsKt__IndentKt.attributeOrNull(elementImpl, "width"), density);
                float parseDp2 = Hex.parseDp(StringsKt__IndentKt.attributeOrNull(elementImpl, "height"), density);
                String attributeOrNull = StringsKt__IndentKt.attributeOrNull(elementImpl, "viewportWidth");
                float parseFloat = attributeOrNull != null ? Float.parseFloat(attributeOrNull) : 0.0f;
                String attributeOrNull2 = StringsKt__IndentKt.attributeOrNull(elementImpl, "viewportHeight");
                ImageVector.Builder builder2 = new ImageVector.Builder(null, parseDp, parseDp2, parseFloat, attributeOrNull2 != null ? Float.parseFloat(attributeOrNull2) : 0.0f, 0L, 0, Intrinsics.areEqual(StringsKt__IndentKt.attributeOrNull(elementImpl, "autoMirrored"), "true"), 97);
                StringsKt__IndentKt.parseVectorNodes(elementImpl, builder2, builder);
                return new ImageCache$Vector(builder2.build());
            default:
                Module module = (Module) obj;
                module.getClass();
                StringsKt__StringsKt$$ExternalSyntheticLambda0 stringsKt__StringsKt$$ExternalSyntheticLambda0 = new StringsKt__StringsKt$$ExternalSyntheticLambda0(10, (K9App) obj2);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Application.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                BeanDefinition beanDefinition = new BeanDefinition(stringQualifier, orCreateKotlinClass, null, stringsKt__StringsKt$$ExternalSyntheticLambda0, Kind.Singleton);
                SingleInstanceFactory singleInstanceFactory = new SingleInstanceFactory(beanDefinition);
                module.indexPrimaryType(singleInstanceFactory);
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Context.class);
                beanDefinition.secondaryTypes = CollectionsKt.plus(beanDefinition.secondaryTypes, orCreateKotlinClass2);
                module.mappings.put(KClassExtKt.getFullName(orCreateKotlinClass2) + "::" + stringQualifier, singleInstanceFactory);
                return unit;
        }
    }
}
