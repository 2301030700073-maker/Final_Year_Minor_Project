package kotlin.time;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.load.Option;
import com.fsck.k9.helper.ReplyToParser;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.message.ReplyActionStrategy;
import com.fsck.k9.ui.base.KoinModuleKt$$ExternalSyntheticLambda1;
import com.fsck.k9.ui.helper.RelativeDateTimeFormatter;
import com.fsck.k9.ui.messagedetails.AddToContactsLauncher;
import com.fsck.k9.ui.messagedetails.ContactSettingsProvider;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import com.fsck.k9.ui.messagedetails.RealMessageDetailsParticipantFormatter;
import com.fsck.k9.ui.messagedetails.ShowContactLauncher;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.messagelist.MessageListLiveDataFactory;
import com.fsck.k9.ui.messagelist.MessageListLoader;
import com.fsck.k9.ui.messagelist.MessageListViewItem;
import com.fsck.k9.ui.messagelist.MessageListViewModel;
import com.fsck.k9.ui.messagelist.SortTypeToastProvider;
import com.fsck.k9.ui.settings.SettingsViewModel;
import com.fsck.k9.ui.settings.account.AccountSettingsDataStoreFactory;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.account.Vibrator;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.export.SettingsListItem;
import com.fsck.k9.ui.settings.general.GeneralSettingsDataStore;
import com.fsck.k9.ui.settings.general.GeneralSettingsViewModel;
import com.fsck.k9.view.K9WebViewClient;
import com.fsck.k9.view.UserInputEmailAddressParser;
import com.fsck.k9.view.WebViewClientFactory;
import com.fsck.k9.view.WebViewConfigProvider;
import com.skydoves.landscapist.coil3.CoilImageKt;
import com.skydoves.landscapist.coil3.CoilImageState;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.datetime.format.Padding;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.io.Sink$CC;
import net.thunderbird.feature.navigation.drawer.dropdown.NavigationDrawerModuleKt;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class InstantKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ InstantKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Unit CoilImage$lambda$1$0;
        Unit CoilImage$lambda$5$0;
        int i = this.$r8$classId;
        int i2 = 16;
        r6 = true;
        boolean z = true;
        int i3 = 0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            case 1:
                Module module = (Module) obj;
                module.getClass();
                KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda1 = new KoinModuleKt$$ExternalSyntheticLambda1(i2);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MessageDetailsViewModel.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Factory;
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, koinModuleKt$$ExternalSyntheticLambda1, kind)));
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(ContactSettingsProvider.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(17), kind)));
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(AddToContactsLauncher.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(18), kind)));
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(ShowContactLauncher.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(19), kind)));
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(RealMessageDetailsParticipantFormatter.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(20), kind)));
                break;
            case 2:
                Module module2 = (Module) obj;
                module2.getClass();
                CollectionsKt.addAll(module2.includedModules, new Module[]{NavigationDrawerModuleKt.navigationDropDownDrawerModule});
                KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda12 = new KoinModuleKt$$ExternalSyntheticLambda1(21);
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(MessageListViewModel.class);
                StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
                Kind kind2 = Kind.Factory;
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass2, null, koinModuleKt$$ExternalSyntheticLambda12, kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(22), kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(MessageListLoader.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(23), kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(MessageListLiveDataFactory.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(24), kind2)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(Option.AnonymousClass1.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(25), kind2)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(SortTypeToastProvider.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(26), Kind.Singleton), module2);
                break;
            case 3:
                ((NotificationAction) obj).getClass();
                break;
            case 4:
                MessageListViewItem.Message message = (MessageListViewItem.Message) obj;
                message.getClass();
                break;
            case 5:
                Address[] addressArr = (Address[]) obj;
                addressArr.getClass();
                break;
            case 6:
                Address[] addressArr2 = (Address[]) obj;
                addressArr2.getClass();
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Address address = (Address) obj;
                address.getClass();
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Address address2 = (Address) obj;
                address2.getClass();
                break;
            case 9:
                Module module3 = (Module) obj;
                module3.getClass();
                KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda13 = new KoinModuleKt$$ExternalSyntheticLambda1(29);
                ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(SettingsViewModel.class);
                StringQualifier stringQualifier3 = ScopeRegistry.rootScopeQualifier;
                Kind kind3 = Kind.Factory;
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass3, null, koinModuleKt$$ExternalSyntheticLambda13, kind3)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(GeneralSettingsViewModel.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(r6 ? 1 : 0), kind3)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(GeneralSettingsDataStore.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(2), kind3)));
                StringQualifier stringQualifier4 = new StringQualifier("SaveSettingsExecutorService");
                com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda14 = new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(3);
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(ExecutorService.class);
                Kind kind4 = Kind.Singleton;
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass4, stringQualifier4, koinModuleKt$$ExternalSyntheticLambda14, kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(AccountSettingsViewModel.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(4), kind3)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(AccountSettingsDataStoreFactory.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(5), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(Vibrator.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(6), kind3)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(SettingsExportViewModel.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(7), kind3)));
                break;
            case 10:
                SettingsListItem.Account account = (SettingsListItem.Account) obj;
                account.getClass();
                break;
            case 11:
                ((SemanticsPropertyReceiver) obj).getClass();
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((SemanticsPropertyReceiver) obj).getClass();
                break;
            case 13:
                Module module4 = (Module) obj;
                module4.getClass();
                com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda15 = new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(i3);
                ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(WebViewConfigProvider.class);
                StringQualifier stringQualifier5 = ScopeRegistry.rootScopeQualifier;
                module4.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, orCreateKotlinClass5, null, koinModuleKt$$ExternalSyntheticLambda15, Kind.Singleton)));
                com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda16 = new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(11);
                ClassReference orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(RelativeDateTimeFormatter.class);
                Kind kind5 = Kind.Factory;
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, orCreateKotlinClass6, null, koinModuleKt$$ExternalSyntheticLambda16, kind5)));
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(ReplyToParser.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(12), kind5)));
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(ReplyActionStrategy.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(13), kind5)));
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(K9WebViewClient.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(14), kind5)));
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(WebViewClientFactory.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(15), kind5)));
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(UserInputEmailAddressParser.class), null, new com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1(i2), kind5)));
                break;
            case 14:
                CoilImage$lambda$1$0 = CoilImageKt.CoilImage$lambda$1$0((CoilImageState) obj);
                break;
            case OffsetKt.Horizontal /* 15 */:
                CoilImage$lambda$5$0 = CoilImageKt.CoilImage$lambda$5$0((CoilImageState) obj);
                break;
            case 16:
                break;
            case 17:
                break;
            case 18:
                char charValue = ((Character) obj).charValue();
                if (charValue != 'T' && charValue != 't') {
                    z = false;
                }
                break;
            case 19:
                break;
            case 20:
                break;
            case 21:
                char charValue2 = ((Character) obj).charValue();
                break;
            case 22:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (element instanceof CoroutineDispatcher) {
                    break;
                }
                break;
            case 23:
                LocalDateTimeFormat.Builder builder = (LocalDateTimeFormat.Builder) obj;
                builder.getClass();
                StringsKt__IndentKt.m991char(builder, 't');
                break;
            case 24:
                LocalDateTimeFormat.Builder builder2 = (LocalDateTimeFormat.Builder) obj;
                builder2.getClass();
                StringsKt__IndentKt.m991char(builder2, 'T');
                break;
            case 25:
                ((DateTimeFormatBuilder.WithTime) obj).getClass();
                break;
            case 26:
                DateTimeFormatBuilder.WithTime withTime = (DateTimeFormatBuilder.WithTime) obj;
                withTime.getClass();
                StringsKt__IndentKt.m991char(withTime, ':');
                withTime.second(Padding.ZERO);
                StringsKt__IndentKt.optional(withTime, "", new InstantKt$$ExternalSyntheticLambda0(27));
                break;
            case 27:
                DateTimeFormatBuilder.WithTime withTime2 = (DateTimeFormatBuilder.WithTime) obj;
                withTime2.getClass();
                StringsKt__IndentKt.m991char(withTime2, '.');
                withTime2.secondFraction();
                break;
            case 28:
                UtcOffsetFormat.Builder builder3 = (UtcOffsetFormat.Builder) obj;
                builder3.getClass();
                StringsKt__IndentKt.m991char(builder3, ':');
                Sink$CC.offsetSecondsOfMinute$default(builder3);
                break;
            default:
                UtcOffsetFormat.Builder builder4 = (UtcOffsetFormat.Builder) obj;
                builder4.getClass();
                Sink$CC.offsetSecondsOfMinute$default(builder4);
                break;
        }
        return unit;
    }

    public /* synthetic */ InstantKt$$ExternalSyntheticLambda0(LocalStore.AnonymousClass8 anonymousClass8, int i) {
        this.$r8$classId = i;
    }
}
