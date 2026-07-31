package kotlinx.serialization.json;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.internal.Lock;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.launcher.di.FeatureLauncherModuleKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.CoreKoinModulesKt;
import com.fsck.k9.LegacyCommonAppModuleKt;
import com.fsck.k9.UiKoinModulesKt;
import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__IndentKt;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.internal.format.parser.ParseError;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersCacheKt$$ExternalSyntheticLambda2;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.StringOpsKt;
import net.thunderbird.app.common.account.AccountColorPicker;
import net.thunderbird.app.common.account.AccountCreator;
import net.thunderbird.app.common.account.AppCommonAccountModuleKt;
import net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountRepository;
import net.thunderbird.app.common.activity.DefaultActivityProvider;
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.app.common.appVersion.DefaultAppVersionProvider;
import net.thunderbird.app.common.core.AppCommonCoreModuleKt;
import net.thunderbird.app.common.core.AppCommonCoreModuleKt$$ExternalSyntheticLambda7;
import net.thunderbird.app.common.core.configstore.ConfigStoreModuleKt;
import net.thunderbird.app.common.core.logging.DefaultLogLevelManager;
import net.thunderbird.app.common.core.logging.LoggerModuleKt;
import net.thunderbird.app.common.core.logging.LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;
import net.thunderbird.app.common.core.ui.AppCommonCoreUiModuleKt;
import net.thunderbird.app.common.feature.AppCommonFeatureModuleKt;
import net.thunderbird.app.common.feature.MessageListLauncher;
import net.thunderbird.app.common.feature.NavigationDrawerConfigLoader;
import net.thunderbird.app.common.feature.NavigationDrawerConfigWriter;
import net.thunderbird.app.common.feature.mail.FeatureMailModuleKt;
import net.thunderbird.app.common.feature.mail.message.MailMessageModuleKt;
import net.thunderbird.app.common.feature.mail.message.MailMessageModuleKt$mailMessageModule$1$3$1;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.app.common.startup.AppCommonStartupModuleKt;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.backend.imap.DefaultImapRemoteFolderCreatorFactory;
import net.thunderbird.core.android.account.AccountDefaultsProvider;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.CoreCommonModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.resources.PluralsResourceManager;
import net.thunderbird.core.common.resources.ResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.configstore.backend.AndroidConfigBackendFileManager;
import net.thunderbird.core.configstore.backend.DataStoreConfigBackendFactory;
import net.thunderbird.core.file.AndroidDirectoryProvider;
import net.thunderbird.core.file.AndroidFileSystemManager;
import net.thunderbird.core.file.AndroidMimeTypeResolver;
import net.thunderbird.core.file.DefaultFileManager;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogLevelProvider;
import net.thunderbird.core.logging.LogSink;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.account.avatar.di.FeatureAccountAvatarModuleKt;
import net.thunderbird.feature.account.core.AccountCoreModuleKt;
import net.thunderbird.feature.account.core.AccountCoreModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.DefaultAccountSettingsNavigation;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateFetchingMailSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateReadEmailSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsValidator;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.account.storage.legacy.AccountStorageLegacyModuleKt;
import net.thunderbird.feature.mail.account.api.AccountManager;
import net.thunderbird.feature.mail.message.composer.inject.FeatureMessageComposerModuleKt;
import net.thunderbird.feature.mail.message.export.DefaultMessageFileNameSuggester;
import net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;
import net.thunderbird.feature.mail.message.reader.impl.inject.FeatureMessageReaderModuleKt;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.impl.inject.NotificationModuleKt;
import net.thunderbird.feature.thundermail.internal.common.inject.FeatureThundermailCommonModuleKt;
import okhttp3.CacheControl;
import okhttp3.Handshake;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class JsonObject$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ JsonObject$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 19;
        int i3 = 16;
        int i4 = 14;
        int i5 = 13;
        int i6 = 12;
        int i7 = 11;
        int i8 = 10;
        int i9 = 9;
        int i10 = 8;
        int i11 = 15;
        int i12 = 20;
        int i13 = 7;
        int i14 = 6;
        int i15 = 0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                String str = (String) entry.getKey();
                JsonElement jsonElement = (JsonElement) entry.getValue();
                StringBuilder sb = new StringBuilder();
                StringOpsKt.printQuoted(sb, str);
                sb.append(':');
                sb.append(jsonElement);
                return sb.toString();
            case 1:
                UtcOffsetFormat.Builder builder = (UtcOffsetFormat.Builder) obj;
                builder.getClass();
                Sink$CC.$default$chars(builder, "z");
                return unit;
            case 2:
                UtcOffsetFormat.Builder builder2 = (UtcOffsetFormat.Builder) obj;
                builder2.getClass();
                StringsKt__IndentKt.optional(builder2, "Z", new JsonObject$$ExternalSyntheticLambda0(5));
                return unit;
            case 3:
                UtcOffsetFormat.Builder builder3 = (UtcOffsetFormat.Builder) obj;
                builder3.getClass();
                Sink$CC.$default$chars(builder3, "z");
                return unit;
            case 4:
                UtcOffsetFormat.Builder builder4 = (UtcOffsetFormat.Builder) obj;
                builder4.getClass();
                StringsKt__IndentKt.optional(builder4, "Z", new JsonObject$$ExternalSyntheticLambda0(i14));
                return unit;
            case 5:
                UtcOffsetFormat.Builder builder5 = (UtcOffsetFormat.Builder) obj;
                builder5.getClass();
                Sink$CC.offsetHours$default(builder5);
                StringsKt__IndentKt.m991char(builder5, ':');
                Sink$CC.offsetMinutesOfHour$default(builder5);
                StringsKt__IndentKt.optional(builder5, "", new InstantKt$$ExternalSyntheticLambda0(28));
                return unit;
            case 6:
                UtcOffsetFormat.Builder builder6 = (UtcOffsetFormat.Builder) obj;
                builder6.getClass();
                Sink$CC.offsetHours$default(builder6);
                StringsKt__IndentKt.optional(builder6, "", new JsonObject$$ExternalSyntheticLambda0(i13));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                UtcOffsetFormat.Builder builder7 = (UtcOffsetFormat.Builder) obj;
                builder7.getClass();
                Sink$CC.offsetMinutesOfHour$default(builder7);
                StringsKt__IndentKt.optional(builder7, "", new InstantKt$$ExternalSyntheticLambda0(29));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ParseError parseError = (ParseError) obj;
                parseError.getClass();
                StringBuilder sb2 = new StringBuilder("position ");
                sb2.append(parseError.position);
                sb2.append(": '");
                return CameraDevices$CC.m(sb2, (String) parseError.message.invoke(), '\'');
            case 9:
                KClass kClass = (KClass) obj;
                kClass.getClass();
                KSerializer serializerOrNull = ByteStreamsKt.serializerOrNull(kClass);
                if (serializerOrNull != null) {
                    return serializerOrNull;
                }
                if (Handshake.Companion.getJavaClass(kClass).isInterface()) {
                    return new PolymorphicSerializer(kClass);
                }
                return null;
            case 10:
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                KSerializer serializerOrNull2 = ByteStreamsKt.serializerOrNull(kClass2);
                if (serializerOrNull2 == null) {
                    serializerOrNull2 = Handshake.Companion.getJavaClass(kClass2).isInterface() ? new PolymorphicSerializer(kClass2) : null;
                }
                if (serializerOrNull2 != null) {
                    return CacheControl.Companion.getNullable(serializerOrNull2);
                }
                return null;
            case 11:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                final UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda0 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(i12);
                classSerialDescriptorBuilder.element("JsonPrimitive", new SerialDescriptor(utcOffsetJvmKt$$ExternalSyntheticLambda0) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utcOffsetJvmKt$$ExternalSyntheticLambda0);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i16) {
                        return getOriginal().getElementAnnotations(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i16) {
                        return getOriginal().getElementDescriptor(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str2) {
                        str2.getClass();
                        return getOriginal().getElementIndex(str2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i16) {
                        return getOriginal().getElementName(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final RangesKt getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i16) {
                        return getOriginal().isElementOptional(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isNullable() {
                        return false;
                    }
                });
                final UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda02 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(21);
                classSerialDescriptorBuilder.element("JsonNull", new SerialDescriptor(utcOffsetJvmKt$$ExternalSyntheticLambda02) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utcOffsetJvmKt$$ExternalSyntheticLambda02);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i16) {
                        return getOriginal().getElementAnnotations(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i16) {
                        return getOriginal().getElementDescriptor(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str2) {
                        str2.getClass();
                        return getOriginal().getElementIndex(str2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i16) {
                        return getOriginal().getElementName(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final RangesKt getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i16) {
                        return getOriginal().isElementOptional(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isNullable() {
                        return false;
                    }
                });
                final UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda03 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(22);
                classSerialDescriptorBuilder.element("JsonLiteral", new SerialDescriptor(utcOffsetJvmKt$$ExternalSyntheticLambda03) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utcOffsetJvmKt$$ExternalSyntheticLambda03);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i16) {
                        return getOriginal().getElementAnnotations(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i16) {
                        return getOriginal().getElementDescriptor(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str2) {
                        str2.getClass();
                        return getOriginal().getElementIndex(str2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i16) {
                        return getOriginal().getElementName(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final RangesKt getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i16) {
                        return getOriginal().isElementOptional(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isNullable() {
                        return false;
                    }
                });
                final UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda04 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(23);
                classSerialDescriptorBuilder.element("JsonObject", new SerialDescriptor(utcOffsetJvmKt$$ExternalSyntheticLambda04) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utcOffsetJvmKt$$ExternalSyntheticLambda04);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i16) {
                        return getOriginal().getElementAnnotations(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i16) {
                        return getOriginal().getElementDescriptor(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str2) {
                        str2.getClass();
                        return getOriginal().getElementIndex(str2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i16) {
                        return getOriginal().getElementName(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final RangesKt getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i16) {
                        return getOriginal().isElementOptional(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isNullable() {
                        return false;
                    }
                });
                final UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda05 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(24);
                classSerialDescriptorBuilder.element("JsonArray", new SerialDescriptor(utcOffsetJvmKt$$ExternalSyntheticLambda05) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utcOffsetJvmKt$$ExternalSyntheticLambda05);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i16) {
                        return getOriginal().getElementAnnotations(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i16) {
                        return getOriginal().getElementDescriptor(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str2) {
                        str2.getClass();
                        return getOriginal().getElementIndex(str2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i16) {
                        return getOriginal().getElementName(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final RangesKt getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i16) {
                        return getOriginal().isElementOptional(i16);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final /* bridge */ boolean isNullable() {
                        return false;
                    }
                });
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                Module module = (Module) obj;
                module.getClass();
                LinkedHashSet linkedHashSet = module.eagerInstances;
                List list = LegacyCommonAppModuleKt.legacyCommonAppModules;
                list.getClass();
                ArrayList arrayList = module.includedModules;
                arrayList.addAll(list);
                List list2 = CoreKoinModulesKt.legacyCoreModules;
                list2.getClass();
                arrayList.addAll(list2);
                List list3 = UiKoinModulesKt.legacyUiModules;
                list3.getClass();
                arrayList.addAll(list3);
                CollectionsKt.addAll(arrayList, new Module[]{AppCommonAccountModuleKt.appCommonAccountModule, AppCommonCoreModuleKt.appCommonCoreModule, AppCommonFeatureModuleKt.appCommonFeatureModule, AppCommonStartupModuleKt.appCommonStartupModule});
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda2 = new SerializersCacheKt$$ExternalSyntheticLambda2(5);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AndroidPlatformConfigProvider.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Singleton;
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, serializersCacheKt$$ExternalSyntheticLambda2, kind)));
                SingleInstanceFactory singleInstanceFactory = new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultActivityProvider.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i14), kind));
                module.indexPrimaryType(singleInstanceFactory);
                linkedHashSet.add(singleInstanceFactory);
                return unit;
            case 13:
                Module module2 = (Module) obj;
                module2.getClass();
                CollectionsKt.addAll(module2.includedModules, new Module[]{AccountCoreModuleKt.featureAccountCoreModule, AccountStorageLegacyModuleKt.featureAccountStorageLegacyModule});
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda22 = new SerializersCacheKt$$ExternalSyntheticLambda2(i13);
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(AccountManager.class);
                StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
                Kind kind2 = Kind.Singleton;
                SingleInstanceFactory singleInstanceFactory2 = new SingleInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass2, null, serializersCacheKt$$ExternalSyntheticLambda22, kind2));
                module2.indexPrimaryType(singleInstanceFactory2);
                ByteStreamsKt.binds(new KoinDefinition(module2, singleInstanceFactory2), new KClass[]{Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class)});
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAccountProfileLocalDataSource.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i10), kind2)));
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(AccountDefaultsProvider.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i9), kind2)));
                StringQualifier stringQualifier3 = new StringQualifier("AccountColors");
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda23 = new SerializersCacheKt$$ExternalSyntheticLambda2(i8);
                ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(ImmutableList.class);
                Kind kind3 = Kind.Factory;
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass3, stringQualifier3, serializersCacheKt$$ExternalSyntheticLambda23, kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(AccountColorPicker.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i7), kind3)));
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAvatarIconCatalog.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i6), kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAvatarMonogramCreator.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i5), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultLegacyAccountRepository.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i4), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(AccountCreator.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i11), kind3)));
                return unit;
            case 14:
                ((NotificationSettings) obj).getClass();
                return new NotificationSettings(true, "content://settings/system/notification_sound", NotificationLight.Disabled, NotificationVibration.DEFAULT);
            case OffsetKt.Horizontal /* 15 */:
                Module module3 = (Module) obj;
                module3.getClass();
                CollectionsKt.addAll(module3.includedModules, new Module[]{ConfigStoreModuleKt.appCommonCoreConfigStoreModule, LoggerModuleKt.appCommonCoreLogger, AppCommonCoreUiModuleKt.appCommonCoreUiModule});
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda24 = new SerializersCacheKt$$ExternalSyntheticLambda2(i3);
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(AndroidFileSystemManager.class);
                StringQualifier stringQualifier4 = ScopeRegistry.rootScopeQualifier;
                Kind kind4 = Kind.Singleton;
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, orCreateKotlinClass4, null, serializersCacheKt$$ExternalSyntheticLambda24, kind4)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(DefaultFileManager.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(17), kind4)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(AndroidDirectoryProvider.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(18), kind4)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(AppCommonCoreModuleKt$$ExternalSyntheticLambda7.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i2), kind4)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(DefaultAppVersionProvider.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(i12), kind4)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(AndroidMimeTypeResolver.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(21), kind4), module3);
                return unit;
            case 16:
                Module module4 = (Module) obj;
                module4.getClass();
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda25 = new SerializersCacheKt$$ExternalSyntheticLambda2(22);
                ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(AndroidConfigBackendFileManager.class);
                StringQualifier stringQualifier5 = ScopeRegistry.rootScopeQualifier;
                Kind kind5 = Kind.Singleton;
                module4.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, orCreateKotlinClass5, null, serializersCacheKt$$ExternalSyntheticLambda25, kind5)));
                module4.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(DataStoreConfigBackendFactory.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(23), kind5)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(Lock.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(24), kind5), module4);
                return unit;
            case 17:
                Module module5 = (Module) obj;
                module5.getClass();
                LinkedHashSet linkedHashSet2 = module5.eagerInstances;
                SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda26 = new SerializersCacheKt$$ExternalSyntheticLambda2(25);
                ClassReference orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(LogLevel.class);
                StringQualifier stringQualifier6 = ScopeRegistry.rootScopeQualifier;
                Kind kind6 = Kind.Singleton;
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, orCreateKotlinClass6, null, serializersCacheKt$$ExternalSyntheticLambda26, kind6)));
                BeanDefinition beanDefinition = new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(DefaultLogLevelManager.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(26), kind6);
                SingleInstanceFactory singleInstanceFactory3 = new SingleInstanceFactory(beanDefinition);
                module5.indexPrimaryType(singleInstanceFactory3);
                ClassReference orCreateKotlinClass7 = Reflection.getOrCreateKotlinClass(LogLevelProvider.class);
                beanDefinition.secondaryTypes = CollectionsKt.plus(beanDefinition.secondaryTypes, orCreateKotlinClass7);
                module5.mappings.put(KClassExtKt.getFullName(orCreateKotlinClass7) + "::" + stringQualifier6, singleInstanceFactory3);
                SingleInstanceFactory singleInstanceFactory4 = new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(List.class), new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(LogSink.class).getQualifiedName(), ">")), new LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1(new Function2[]{new SerializersCacheKt$$ExternalSyntheticLambda2(27)}, i15), kind6));
                module5.indexPrimaryType(singleInstanceFactory4);
                linkedHashSet2.add(singleInstanceFactory4);
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(CompositeLogSink.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(28), kind6)));
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(Logger.class), null, new SerializersCacheKt$$ExternalSyntheticLambda2(29), kind6)));
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(List.class), new StringQualifier("syncDebug"), new CoreCommonModuleKt$$ExternalSyntheticLambda0(1), kind6)));
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(CompositeLogSink.class), new StringQualifier("syncDebug"), new CoreCommonModuleKt$$ExternalSyntheticLambda0(2), kind6)));
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(FileLogSink.class), new StringQualifier("syncDebug"), new CoreCommonModuleKt$$ExternalSyntheticLambda0(3), kind6)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier6, Reflection.getOrCreateKotlinClass(Logger.class), new StringQualifier("syncDebug"), new CoreCommonModuleKt$$ExternalSyntheticLambda0(4), kind6), module5);
                return unit;
            case 18:
                Module module6 = (Module) obj;
                module6.getClass();
                Module[] moduleArr = {FeatureMailModuleKt.appCommonFeatureMailModule};
                ArrayList arrayList2 = module6.includedModules;
                CollectionsKt.addAll(arrayList2, moduleArr);
                CollectionsKt.addAll(arrayList2, new Module[]{FeatureAccountAvatarModuleKt.featureAccountAvatarModule});
                CollectionsKt.addAll(arrayList2, new Module[]{FeatureLauncherModuleKt.featureLauncherModule});
                CollectionsKt.addAll(arrayList2, new Module[]{NotificationModuleKt.featureNotificationModule});
                CollectionsKt.addAll(arrayList2, new Module[]{FeatureMessageComposerModuleKt.featureMessageComposerModule});
                CollectionsKt.addAll(arrayList2, new Module[]{FeatureMessageReaderModuleKt.featureMessageReaderModule});
                CollectionsKt.addAll(arrayList2, new Module[]{FeatureThundermailCommonModuleKt.featureThundermailCommonModule});
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda0 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i14);
                ClassReference orCreateKotlinClass8 = Reflection.getOrCreateKotlinClass(MessageListLauncher.class);
                StringQualifier stringQualifier7 = ScopeRegistry.rootScopeQualifier;
                module6.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier7, orCreateKotlinClass8, null, coreCommonModuleKt$$ExternalSyntheticLambda0, Kind.Factory)));
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda02 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i13);
                ClassReference orCreateKotlinClass9 = Reflection.getOrCreateKotlinClass(NavigationDrawerConfigLoader.class);
                Kind kind7 = Kind.Singleton;
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier7, orCreateKotlinClass9, null, coreCommonModuleKt$$ExternalSyntheticLambda02, kind7)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier7, Reflection.getOrCreateKotlinClass(NavigationDrawerConfigWriter.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i10), kind7), module6);
                return unit;
            case 19:
                Module module7 = (Module) obj;
                module7.getClass();
                CollectionsKt.addAll(module7.includedModules, new Module[]{MailMessageModuleKt.mailMessageModule});
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda03 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i9);
                ClassReference orCreateKotlinClass10 = Reflection.getOrCreateKotlinClass(DefaultSpecialFolderUpdater$Factory.class);
                StringQualifier stringQualifier8 = ScopeRegistry.rootScopeQualifier;
                module7.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier8, orCreateKotlinClass10, null, coreCommonModuleKt$$ExternalSyntheticLambda03, Kind.Factory)));
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda04 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i8);
                ClassReference orCreateKotlinClass11 = Reflection.getOrCreateKotlinClass(DefaultImapRemoteFolderCreatorFactory.class);
                Kind kind8 = Kind.Singleton;
                module7.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier8, orCreateKotlinClass11, null, coreCommonModuleKt$$ExternalSyntheticLambda04, kind8)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier8, Reflection.getOrCreateKotlinClass(RemoteFolderCreator.Factory.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i7), kind8), module7);
                return unit;
            case 20:
                Module module8 = (Module) obj;
                module8.getClass();
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda05 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i6);
                ClassReference orCreateKotlinClass12 = Reflection.getOrCreateKotlinClass(DefaultMessageFileNameSuggester.class);
                StringQualifier stringQualifier9 = ScopeRegistry.rootScopeQualifier;
                Kind kind9 = Kind.Singleton;
                module8.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier9, orCreateKotlinClass12, null, coreCommonModuleKt$$ExternalSyntheticLambda05, kind9)));
                module8.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier9, Reflection.getOrCreateKotlinClass(EmlMessageExporter.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i5), kind9)));
                module8.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier9, Reflection.getOrCreateKotlinClass(MailMessageModuleKt$mailMessageModule$1$3$1.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i4), kind9)));
                module8.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier9, Reflection.getOrCreateKotlinClass(LegacyUpdateSortCriteria.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i11), kind9)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier9, Reflection.getOrCreateKotlinClass(AttachmentViewInfoMapper.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i3), kind9), module8);
                return unit;
            case 21:
                Module module9 = (Module) obj;
                module9.getClass();
                CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda06 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(i2);
                ClassReference orCreateKotlinClass13 = Reflection.getOrCreateKotlinClass(AndroidResourceManager.class);
                StringQualifier stringQualifier10 = ScopeRegistry.rootScopeQualifier;
                Kind kind10 = Kind.Singleton;
                module9.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier10, orCreateKotlinClass13, null, coreCommonModuleKt$$ExternalSyntheticLambda06, kind10)));
                module9.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier10, Reflection.getOrCreateKotlinClass(ResourceManager.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(i12), kind10)));
                module9.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier10, Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(21), kind10)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier10, Reflection.getOrCreateKotlinClass(PluralsResourceManager.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(22), kind10), module9);
                return unit;
            case 22:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                ClassReference classReference = (ClassReference) ((KClass) entry2.getKey());
                String simpleName = classReference.getSimpleName();
                return simpleName != null ? simpleName : classReference.toString();
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                ContentType.Companion.getClass();
                SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.Password);
                return unit;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                if (Build.VERSION.SDK_INT <= 25) {
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                    semanticsPropertyReceiver2.set(SemanticsProperties.Password, unit);
                }
                return unit;
            case 25:
                ((SwipeDirection) obj).getClass();
                return unit;
            case 26:
                String str2 = (String) obj;
                str2.getClass();
                return str2;
            case 27:
                SettingValue.Select.SelectOption selectOption = (SettingValue.Select.SelectOption) obj;
                selectOption.getClass();
                return (String) selectOption.title.invoke();
            case 28:
                SettingValue.SegmentedButton.SegmentedButtonOption segmentedButtonOption = (SettingValue.SegmentedButton.SegmentedButtonOption) obj;
                segmentedButtonOption.getClass();
                return (String) segmentedButtonOption.title.invoke();
            default:
                Module module10 = (Module) obj;
                module10.getClass();
                AccountCoreModuleKt$$ExternalSyntheticLambda0 accountCoreModuleKt$$ExternalSyntheticLambda0 = new AccountCoreModuleKt$$ExternalSyntheticLambda0(i11);
                ClassReference orCreateKotlinClass14 = Reflection.getOrCreateKotlinClass(DefaultAccountSettingsNavigation.class);
                StringQualifier stringQualifier11 = ScopeRegistry.rootScopeQualifier;
                module10.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier11, orCreateKotlinClass14, null, accountCoreModuleKt$$ExternalSyntheticLambda0, Kind.Singleton)));
                AccountCoreModuleKt$$ExternalSyntheticLambda0 accountCoreModuleKt$$ExternalSyntheticLambda02 = new AccountCoreModuleKt$$ExternalSyntheticLambda0(i14);
                ClassReference orCreateKotlinClass15 = Reflection.getOrCreateKotlinClass(GetAccountName.class);
                Kind kind11 = Kind.Factory;
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, orCreateKotlinClass15, null, accountCoreModuleKt$$ExternalSyntheticLambda02, kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(UpdateReadEmailSettings.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i13), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(UpdateFetchingMailSettings.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i10), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(UpdateSearchSettings.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i9), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(GetAccountProfile.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i8), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(GetLegacyAccount.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i7), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(UpdateAvatarImage.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i6), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(UpdateGeneralSettings.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i5), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(GeneralSettingsValidator.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i4), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(GeneralSettingsBuilder.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i3), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(GeneralSettingsViewModel.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(17), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(ReadingMailSettingsBuilder.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(18), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(FetchingMailSettingsOptionsMapper.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i2), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(FetchingMailSettingsBuilder.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i12), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(SearchSettingBuilder.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(21), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(ReadingMailSettingsViewModel.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(22), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(FetchingMailSettingsViewModel.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(23), kind11)));
                module10.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier11, Reflection.getOrCreateKotlinClass(SearchSettingsViewModel.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(5), kind11)));
                return unit;
        }
    }
}
