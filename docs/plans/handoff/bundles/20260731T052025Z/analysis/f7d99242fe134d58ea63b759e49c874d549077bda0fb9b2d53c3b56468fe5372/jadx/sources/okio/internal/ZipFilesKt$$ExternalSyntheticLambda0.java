package okio.internal;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Operation$State;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import coil3.size.ViewSizeResolver;
import com.jcraft.jzlib.Adler32;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.time.InstantFormatException;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerialModuleImpl;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.api.sender.NotificationSender;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import net.thunderbird.feature.notification.impl.DefaultNotificationManager;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;
import net.thunderbird.feature.notification.impl.inject.NotificationModuleKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.impl.inject.NotificationModule_androidKt;
import net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;
import net.thunderbird.feature.notification.impl.receiver.InAppNotificationNotifier;
import net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.search.legacy.api.SearchField;
import net.thunderbird.feature.search.legacy.serialization.MessageSearchFieldAsSearchFieldSerializer;
import net.thunderbird.feature.thundermail.internal.common.domain.CreateAccountStateUseCase;
import net.thunderbird.feature.thundermail.internal.common.navigation.DefaultThundermailNavigation;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;
import net.thunderbird.feature.widget.message.list.KoinModuleKt$$ExternalSyntheticLambda0;
import okhttp3.Handshake;
import okio.Path;
import org.jetbrains.compose.resources.ResourceItem;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.nodes.NodeUtils;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ZipFilesKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ZipFilesKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 1;
        Unit unit = Unit.INSTANCE;
        byte b = 0;
        switch (i) {
            case 0:
                ((ZipEntry) obj).getClass();
                return Boolean.TRUE;
            case 1:
                Module module = (Module) obj;
                module.getClass();
                CollectionsKt.addAll(module.includedModules, new Module[]{NotificationModule_androidKt.platformFeatureNotificationModule});
                NotificationModuleKt$$ExternalSyntheticLambda1 notificationModuleKt$$ExternalSyntheticLambda1 = new NotificationModuleKt$$ExternalSyntheticLambda1(b);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DefaultNotificationRegistry.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Singleton;
                SingleInstanceFactory singleInstanceFactory = new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, notificationModuleKt$$ExternalSyntheticLambda1, kind));
                module.indexPrimaryType(singleInstanceFactory);
                ByteStreamsKt.binds(new KoinDefinition(module, singleInstanceFactory), new KClass[]{Reflection.getOrCreateKotlinClass(NotificationRegistry.class)});
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(NotificationNotifier.class), new TypeQualifier(Reflection.getOrCreateKotlinClass(InAppNotificationNotifier.class)), new NotificationModuleKt$$ExternalSyntheticLambda1(21), kind)));
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(NotificationSender.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(22), kind)));
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(NotificationDismisser.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(23), kind)));
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultNotificationManager.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(24), kind)));
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultInAppNotificationStream.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(25), kind)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(Adler32.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(26), kind), module);
                return unit;
            case 2:
                Module module2 = (Module) obj;
                module2.getClass();
                TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Operation$State.class));
                NotificationModuleKt$$ExternalSyntheticLambda1 notificationModuleKt$$ExternalSyntheticLambda12 = new NotificationModuleKt$$ExternalSyntheticLambda1(27);
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(List.class);
                StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
                Kind kind2 = Kind.Singleton;
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass2, typeQualifier, notificationModuleKt$$ExternalSyntheticLambda12, kind2)));
                String lowerCase = "System".toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultSystemNotificationActionCreator.class), new StringQualifier(lowerCase), new NotificationModuleKt$$ExternalSyntheticLambda1(28), kind2)));
                module2.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(NotificationNotifier.class), new TypeQualifier(Reflection.getOrCreateKotlinClass(AndroidSystemNotificationNotifier.class)), new NotificationModuleKt$$ExternalSyntheticLambda1(29), kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(ErrorNotificationsDialogFragment.Factory.class), null, new KoinModuleKt$$ExternalSyntheticLambda0(i2, b), Kind.Factory)));
                return unit;
            case 3:
                InAppNotification inAppNotification = (InAppNotification) obj;
                inAppNotification.getClass();
                return Boolean.valueOf(inAppNotification.getInAppNotificationStyle() instanceof InAppNotificationStyle.BannerInlineNotification);
            case 4:
                InAppNotification inAppNotification2 = (InAppNotification) obj;
                inAppNotification2.getClass();
                return NodeUtils.from(inAppNotification2);
            case 5:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                HashMap hashMap3 = new HashMap();
                HashMap hashMap4 = new HashMap();
                HashMap hashMap5 = new HashMap();
                ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(SearchField.class);
                MessageSearchFieldAsSearchFieldSerializer messageSearchFieldAsSearchFieldSerializer = MessageSearchFieldAsSearchFieldSerializer.INSTANCE;
                ContextualProvider.Argless argless = new ContextualProvider.Argless();
                ContextualProvider contextualProvider = (ContextualProvider) hashMap.get(orCreateKotlinClass3);
                if (contextualProvider == null || contextualProvider.equals(argless)) {
                    hashMap.put(orCreateKotlinClass3, argless);
                    jsonBuilder.serializersModule = new SerialModuleImpl(hashMap, hashMap2, hashMap3, hashMap4, hashMap5, Handshake.Companion.getJavaClass(orCreateKotlinClass3).isInterface());
                    return unit;
                }
                throw new InstantFormatException("Contextual serializer or serializer provider for " + orCreateKotlinClass3 + " already registered in this module");
            case 6:
                Module module3 = (Module) obj;
                module3.getClass();
                KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(2, b);
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(AccountOAuthViewModel.class);
                StringQualifier stringQualifier3 = ScopeRegistry.rootScopeQualifier;
                Kind kind3 = Kind.Factory;
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass4, null, koinModuleKt$$ExternalSyntheticLambda0, kind3)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(ThundermailOAuthViewModel.class), null, new KoinModuleKt$$ExternalSyntheticLambda0(3, b), kind3)));
                KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda02 = new KoinModuleKt$$ExternalSyntheticLambda0(4, b);
                ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(CreateAccountStateUseCase.class);
                Kind kind4 = Kind.Singleton;
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass5, null, koinModuleKt$$ExternalSyntheticLambda02, kind4)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(DefaultThundermailNavigation.class), null, new KoinModuleKt$$ExternalSyntheticLambda0(5, b), kind4), module3);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ZipEntry zipEntry = (ZipEntry) obj;
                zipEntry.getClass();
                Path path = ResourceFileSystem.ROOT;
                return Boolean.valueOf(VerboseLogger.access$keepPath(zipEntry.canonicalPath));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((byte[]) obj).getClass();
                throw new IllegalStateException("Android platform doesn't support SVG format.");
            case 9:
                ResourceItem resourceItem = (ResourceItem) obj;
                resourceItem.getClass();
                return resourceItem.path;
            case 10:
                ElementImpl elementImpl = (ElementImpl) obj;
                elementImpl.getClass();
                String nodeName = ((Node) elementImpl.safelist).getNodeName();
                nodeName.getClass();
                return Boolean.valueOf(nodeName.equals("item"));
            default:
                KClass kClass = (KClass) obj;
                kClass.getClass();
                return KClassExtKt.getFullName(kClass);
        }
    }
}
