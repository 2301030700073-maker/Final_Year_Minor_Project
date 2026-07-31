package kotlinx.serialization;

import android.content.ContentResolver;
import androidx.collection.internal.Lock;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.account.DefaultDeletePolicyProvider;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.SpecialLocalFoldersCreator;
import com.fsck.k9.preferences.UnifiedInboxConfigurator;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.internal.ThreadLocalElement;
import kotlinx.coroutines.internal.ThreadState;
import kotlinx.serialization.modules.SerializersModuleKt;
import net.thunderbird.app.common.account.AccountColorPicker;
import net.thunderbird.app.common.account.AccountCreator;
import net.thunderbird.app.common.account.DefaultAccountDefaultsProvider;
import net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountRepository;
import net.thunderbird.app.common.activity.DefaultActivityProvider;
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.app.common.appVersion.DefaultAppVersionProvider;
import net.thunderbird.app.common.core.AppCommonCoreModuleKt$$ExternalSyntheticLambda7;
import net.thunderbird.app.common.core.logging.DefaultLogLevelManager;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.configstore.backend.AndroidConfigBackendFileManager;
import net.thunderbird.core.configstore.backend.DataStoreConfigBackendFactory;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.file.AndroidDirectoryProvider;
import net.thunderbird.core.file.AndroidFileSystemManager;
import net.thunderbird.core.file.AndroidMimeTypeResolver;
import net.thunderbird.core.file.DefaultFileManager;
import net.thunderbird.core.logging.DefaultLogger;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogLevelProvider;
import net.thunderbird.core.logging.LogSink;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.console.AndroidConsoleLogSink;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAccountProfileDataMapper;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import okhttp3.CacheControl;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SerializersCacheKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SerializersCacheKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                KClass kClass = (KClass) obj;
                List list = (List) obj2;
                kClass.getClass();
                list.getClass();
                ArrayList serializersForParameters = ByteStreamsKt.serializersForParameters(SerializersModuleKt.EmptySerializersModule, list, true);
                serializersForParameters.getClass();
                return ByteStreamsKt.parametrizedSerializerOrNull(kClass, serializersForParameters, new Handshake$Companion$$ExternalSyntheticLambda0(4, list));
            case 1:
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (!(element instanceof ThreadLocalElement)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num != null ? num.intValue() : 1;
                return intValue == 0 ? element : Integer.valueOf(intValue + 1);
            case 2:
                ThreadLocalElement threadLocalElement = (ThreadLocalElement) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                if (threadLocalElement != null) {
                    return threadLocalElement;
                }
                if (element2 instanceof ThreadLocalElement) {
                    return (ThreadLocalElement) element2;
                }
                return null;
            case 3:
                ThreadState threadState = (ThreadState) obj;
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                if (element3 instanceof ThreadLocalElement) {
                    ThreadLocalElement threadLocalElement2 = (ThreadLocalElement) element3;
                    CoroutineContext coroutineContext = threadState.context;
                    Object updateThreadContext = threadLocalElement2.updateThreadContext();
                    Object[] objArr = threadState.values;
                    int i = threadState.i;
                    objArr[i] = updateThreadContext;
                    ThreadLocalElement[] threadLocalElementArr = threadState.elements;
                    threadState.i = i + 1;
                    threadLocalElementArr[i] = threadLocalElement2;
                }
                return threadState;
            case 4:
                KClass kClass2 = (KClass) obj;
                List list2 = (List) obj2;
                kClass2.getClass();
                list2.getClass();
                ArrayList serializersForParameters2 = ByteStreamsKt.serializersForParameters(SerializersModuleKt.EmptySerializersModule, list2, true);
                serializersForParameters2.getClass();
                KSerializer parametrizedSerializerOrNull = ByteStreamsKt.parametrizedSerializerOrNull(kClass2, serializersForParameters2, new Handshake$Companion$$ExternalSyntheticLambda0(5, list2));
                if (parametrizedSerializerOrNull != null) {
                    return CacheControl.Companion.getNullable(parametrizedSerializerOrNull);
                }
                return null;
            case 5:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidPlatformConfigProvider();
            case 6:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultActivityProvider(Okio.androidApplication(scope), (Logger) scope.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLegacyAccountManager((LegacyAccountDtoManager) scope2.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (DefaultLegacyAccountDataMapper) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountProfileLocalDataSource((DefaultLegacyAccountManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultAccountProfileDataMapper) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileDataMapper.class), null, null));
            case 9:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountDefaultsProvider((K9CoreResourceProvider) scope4.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null), (InMemoryFeatureFlagProvider) scope4.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null));
            case 10:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                int[] intArray = Okio.androidContext(scope5).getResources().getIntArray(R.array.account_colors);
                intArray.getClass();
                return Okio.toImmutableList(ArraysKt___ArraysKt.toList(intArray));
            case 11:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountColorPicker((DefaultAccountProfileRepository) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, null), (ImmutableList) scope6.resolve(Reflection.getOrCreateKotlinClass(ImmutableList.class), null, new StringQualifier("AccountColors")));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAvatarIconCatalog();
            case 13:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAvatarMonogramCreator();
            case 14:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLegacyAccountRepository((DefaultLegacyAccountManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope8 = (Scope) obj;
                return new AccountCreator((AccountColorPicker) ViewSizeResolver.CC.m(scope8, (ParametersHolder) obj2, AccountColorPicker.class, (Qualifier) null, (ParametersHolder) null), (SpecialLocalFoldersCreator) scope8.resolve(Reflection.getOrCreateKotlinClass(SpecialLocalFoldersCreator.class), null, null), (Preferences) scope8.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), Okio.androidApplication(scope8), (MessagingController) scope8.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null), (DefaultDeletePolicyProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultDeletePolicyProvider.class), null, null), (DefaultAvatarMonogramCreator) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarMonogramCreator.class), null, null), (UnifiedInboxConfigurator) scope8.resolve(Reflection.getOrCreateKotlinClass(UnifiedInboxConfigurator.class), null, null));
            case 16:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                ContentResolver contentResolver = Okio.androidContext(scope9).getContentResolver();
                contentResolver.getClass();
                return new AndroidFileSystemManager(contentResolver);
            case 17:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultFileManager((AndroidFileSystemManager) scope10.resolve(Reflection.getOrCreateKotlinClass(AndroidFileSystemManager.class), null, null));
            case 18:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidDirectoryProvider(Okio.androidContext(scope11));
            case 19:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AppCommonCoreModuleKt$$ExternalSyntheticLambda7(Okio.androidContext(scope12).getContentResolver());
            case 20:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAppVersionProvider(Okio.androidContext(scope13), (Logger) scope13.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 21:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidMimeTypeResolver((AppCommonCoreModuleKt$$ExternalSyntheticLambda7) scope14.resolve(Reflection.getOrCreateKotlinClass(AppCommonCoreModuleKt$$ExternalSyntheticLambda7.class), null, null));
            case 22:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidConfigBackendFileManager();
            case 23:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DataStoreConfigBackendFactory();
            case 24:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                new LinkedHashMap();
                return new Lock();
            case 25:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return LogLevel.INFO;
            case 26:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLogLevelManager();
            case 27:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidConsoleLogSink();
            case 28:
                Scope scope18 = (Scope) obj;
                return CharsKt__CharKt.CompositeLogSink$default((LogLevelProvider) ViewSizeResolver.CC.m(scope18, (ParametersHolder) obj2, LogLevelProvider.class, (Qualifier) null, (ParametersHolder) null), (List) scope18.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(LogSink.class).getQualifiedName(), ">"))));
            default:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLogger((LogSink) scope19.resolve(Reflection.getOrCreateKotlinClass(CompositeLogSink.class), null, null));
        }
    }
}
