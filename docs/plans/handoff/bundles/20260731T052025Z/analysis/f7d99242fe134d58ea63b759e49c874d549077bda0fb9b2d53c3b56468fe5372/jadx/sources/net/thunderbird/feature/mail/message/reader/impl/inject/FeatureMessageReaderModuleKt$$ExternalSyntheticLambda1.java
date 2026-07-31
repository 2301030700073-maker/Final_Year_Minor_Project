package net.thunderbird.feature.mail.message.reader.impl.inject;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.io.Sink$CC;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.ui.theme.api.ThemeManager;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetMessageListPreferences;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadPreferencesSideEffect;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.ui.OpenMessageSideEffect;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$DeselectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusEnter;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusExit;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SetMessageActive;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressStyle;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Okio;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = 2;
        int i2 = 3;
        int i3 = 10;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        final int i4 = 1;
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessageReaderHtmlSettingsProvider((ThemeManager) scope.resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null), (DisplayVisualSettingsPreferenceManager) scope.resolve(Reflection.getOrCreateKotlinClass(DisplayVisualSettingsPreferenceManager.class), null, null));
            case 1:
                MessageListState messageListState = (MessageListState) obj;
                messageListState.getClass();
                ((MessageItemEvent$DeselectAll) obj2).getClass();
                MessageListMetadata metadata = messageListState.getMetadata();
                MessageListPreferences preferences = messageListState.getPreferences();
                if (preferences == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return null;
                }
                ImmutableList messages = messageListState.getMessages();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(messages, 10));
                Iterator<E> it = messages.iterator();
                while (it.hasNext()) {
                    arrayList.add(MessageItemUi.copy$default((MessageItemUi) it.next(), null, null, false, false, 57343));
                }
                return new MessageListState.LoadedMessages(metadata, preferences, Okio.toImmutableList(arrayList));
            case 2:
                MessageListState messageListState2 = (MessageListState) obj;
                MessageItemEvent$OnFocusEnter messageItemEvent$OnFocusEnter = (MessageItemEvent$OnFocusEnter) obj2;
                messageListState2.getClass();
                messageItemEvent$OnFocusEnter.getClass();
                return messageListState2.withMetadata(new ForwardingFileSystem$$ExternalSyntheticLambda0(11, messageItemEvent$OnFocusEnter));
            case 3:
                MessageListState messageListState3 = (MessageListState) obj;
                messageListState3.getClass();
                ((MessageItemEvent$OnFocusExit) obj2).getClass();
                return messageListState3.withMetadata(new KoinModuleKt$$ExternalSyntheticLambda0(i3));
            case 4:
                MessageListState messageListState4 = (MessageListState) obj;
                MessageListEvent.UpdateFooter updateFooter = (MessageListEvent.UpdateFooter) obj2;
                messageListState4.getClass();
                updateFooter.getClass();
                return messageListState4.withMetadata(new ForwardingFileSystem$$ExternalSyntheticLambda0(9, updateFooter));
            case 5:
                MessageListState.LoadedMessages loadedMessages = (MessageListState.LoadedMessages) obj;
                MessageItemEvent$ToggleSelectMessages messageItemEvent$ToggleSelectMessages = (MessageItemEvent$ToggleSelectMessages) obj2;
                loadedMessages.getClass();
                messageItemEvent$ToggleSelectMessages.getClass();
                MessageListMetadata messageListMetadata = loadedMessages.metadata;
                MessageListPreferences messageListPreferences = loadedMessages.preferences;
                ImmutableList<MessageItemUi> immutableList = loadedMessages.messages;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(immutableList, 10));
                for (MessageItemUi messageItemUi : immutableList) {
                    if (messageItemEvent$ToggleSelectMessages.messages.contains(messageItemUi)) {
                        messageItemUi = MessageItemUi.copy$default(messageItemUi, null, null, !messageItemUi.selected, false, 57343);
                    }
                    arrayList2.add(messageItemUi);
                }
                return new MessageListState.SelectingMessages(messageListMetadata, messageListPreferences, Okio.toPersistentList(arrayList2));
            case 6:
                MessageListState.LoadedMessages loadedMessages2 = (MessageListState.LoadedMessages) obj;
                if (obj2 != null) {
                    throw new ClassCastException();
                }
                loadedMessages2.getClass();
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                MessageListState.LoadedMessages loadedMessages3 = (MessageListState.LoadedMessages) obj;
                if (obj2 != null) {
                    throw new ClassCastException();
                }
                loadedMessages3.getClass();
                throw null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MessageListState.LoadedMessages loadedMessages4 = (MessageListState.LoadedMessages) obj;
                final MessageItemEvent$SetMessageActive messageItemEvent$SetMessageActive = (MessageItemEvent$SetMessageActive) obj2;
                loadedMessages4.getClass();
                messageItemEvent$SetMessageActive.getClass();
                final Object[] objArr4 = objArr == true ? 1 : 0;
                return Sink$CC.$default$withMetadata(loadedMessages4.mapMessages(new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i5 = objArr4;
                        MessageItemEvent$SetMessageActive messageItemEvent$SetMessageActive2 = messageItemEvent$SetMessageActive;
                        switch (i5) {
                            case 0:
                                MessageItemUi messageItemUi2 = (MessageItemUi) obj3;
                                messageItemUi2.getClass();
                                String str = messageItemUi2.id;
                                MessageItemUi messageItemUi3 = messageItemEvent$SetMessageActive2.message;
                                return MessageItemUi.copy$default(messageItemUi2, null, null, false, Intrinsics.areEqual(str, messageItemUi3 != null ? messageItemUi3.id : null), 32767);
                            default:
                                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj3;
                                messageListMetadata2.getClass();
                                return MessageListMetadata.copy$default(messageListMetadata2, null, null, null, messageItemEvent$SetMessageActive2.message, null, null, false, 2031);
                        }
                    }
                }), new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i5 = i4;
                        MessageItemEvent$SetMessageActive messageItemEvent$SetMessageActive2 = messageItemEvent$SetMessageActive;
                        switch (i5) {
                            case 0:
                                MessageItemUi messageItemUi2 = (MessageItemUi) obj3;
                                messageItemUi2.getClass();
                                String str = messageItemUi2.id;
                                MessageItemUi messageItemUi3 = messageItemEvent$SetMessageActive2.message;
                                return MessageItemUi.copy$default(messageItemUi2, null, null, false, Intrinsics.areEqual(str, messageItemUi3 != null ? messageItemUi3.id : null), 32767);
                            default:
                                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj3;
                                messageListMetadata2.getClass();
                                return MessageListMetadata.copy$default(messageListMetadata2, null, null, null, messageItemEvent$SetMessageActive2.message, null, null, false, 2031);
                        }
                    }
                });
            case 9:
                MessageListState.LoadedMessages loadedMessages5 = (MessageListState.LoadedMessages) obj;
                final MessageItemEvent$OnMessageClick messageItemEvent$OnMessageClick = (MessageItemEvent$OnMessageClick) obj2;
                loadedMessages5.getClass();
                messageItemEvent$OnMessageClick.getClass();
                final Object[] objArr5 = objArr2 == true ? 1 : 0;
                return Sink$CC.$default$withMetadata(loadedMessages5.mapMessages(new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i5 = objArr5;
                        MessageItemEvent$OnMessageClick messageItemEvent$OnMessageClick2 = messageItemEvent$OnMessageClick;
                        switch (i5) {
                            case 0:
                                MessageItemUi messageItemUi2 = (MessageItemUi) obj3;
                                messageItemUi2.getClass();
                                MessageItemUi.State state = messageItemUi2.state;
                                boolean areEqual = Intrinsics.areEqual(messageItemUi2.id, messageItemEvent$OnMessageClick2.message.id);
                                MessageItemUi copy$default = MessageItemUi.copy$default(messageItemUi2, null, null, false, areEqual, 32767);
                                MessageItemUi.State state2 = MessageItemUi.State.Read;
                                MessageItemUi.State state3 = (!areEqual || state == state2) ? state : state2;
                                ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                                ComposedAddressUi composedAddressUi = copy$default.senders;
                                String str = composedAddressUi.displayName;
                                int indexOf$default = StringsKt.indexOf$default(str, ',', 0, 6);
                                if (indexOf$default == -1 && state3 != state2) {
                                    createListBuilder.add(new ComposedAddressStyle.Bold(null));
                                } else if (indexOf$default < 0 || indexOf$default > Integer.MAX_VALUE || state3 == state2) {
                                    createListBuilder.add(new ComposedAddressStyle.Regular(0));
                                } else {
                                    createListBuilder.add(new ComposedAddressStyle.Bold(Integer.valueOf(indexOf$default)));
                                    createListBuilder.add(new ComposedAddressStyle.Regular(indexOf$default));
                                }
                                AbstractPersistentList persistentList = Okio.toPersistentList(IntOffsetKt.build(createListBuilder));
                                Avatar avatar = composedAddressUi.avatar;
                                Color color = composedAddressUi.color;
                                persistentList.getClass();
                                return MessageItemUi.copy$default(copy$default, state3, new ComposedAddressUi(str, persistentList, avatar, color), false, false, 65518);
                            default:
                                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj3;
                                messageListMetadata2.getClass();
                                return MessageListMetadata.copy$default(messageListMetadata2, null, null, null, messageItemEvent$OnMessageClick2.message, null, null, false, 2031);
                        }
                    }
                }), new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i5 = i4;
                        MessageItemEvent$OnMessageClick messageItemEvent$OnMessageClick2 = messageItemEvent$OnMessageClick;
                        switch (i5) {
                            case 0:
                                MessageItemUi messageItemUi2 = (MessageItemUi) obj3;
                                messageItemUi2.getClass();
                                MessageItemUi.State state = messageItemUi2.state;
                                boolean areEqual = Intrinsics.areEqual(messageItemUi2.id, messageItemEvent$OnMessageClick2.message.id);
                                MessageItemUi copy$default = MessageItemUi.copy$default(messageItemUi2, null, null, false, areEqual, 32767);
                                MessageItemUi.State state2 = MessageItemUi.State.Read;
                                MessageItemUi.State state3 = (!areEqual || state == state2) ? state : state2;
                                ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                                ComposedAddressUi composedAddressUi = copy$default.senders;
                                String str = composedAddressUi.displayName;
                                int indexOf$default = StringsKt.indexOf$default(str, ',', 0, 6);
                                if (indexOf$default == -1 && state3 != state2) {
                                    createListBuilder.add(new ComposedAddressStyle.Bold(null));
                                } else if (indexOf$default < 0 || indexOf$default > Integer.MAX_VALUE || state3 == state2) {
                                    createListBuilder.add(new ComposedAddressStyle.Regular(0));
                                } else {
                                    createListBuilder.add(new ComposedAddressStyle.Bold(Integer.valueOf(indexOf$default)));
                                    createListBuilder.add(new ComposedAddressStyle.Regular(indexOf$default));
                                }
                                AbstractPersistentList persistentList = Okio.toPersistentList(IntOffsetKt.build(createListBuilder));
                                Avatar avatar = composedAddressUi.avatar;
                                Color color = composedAddressUi.color;
                                persistentList.getClass();
                                return MessageItemUi.copy$default(copy$default, state3, new ComposedAddressUi(str, persistentList, avatar, color), false, false, 65518);
                            default:
                                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj3;
                                messageListMetadata2.getClass();
                                return MessageListMetadata.copy$default(messageListMetadata2, null, null, null, messageItemEvent$OnMessageClick2.message, null, null, false, 2031);
                        }
                    }
                });
            case 10:
                MessageListState.LoadingMessages loadingMessages = (MessageListState.LoadingMessages) obj;
                loadingMessages.getClass();
                ((MessageListEvent.MessagesLoaded) obj2).getClass();
                return Boolean.valueOf(loadingMessages.progress == 1.0f);
            case 11:
                MessageListState.LoadingMessages loadingMessages2 = (MessageListState.LoadingMessages) obj;
                MessageListEvent.MessagesLoaded messagesLoaded = (MessageListEvent.MessagesLoaded) obj2;
                loadingMessages2.getClass();
                messagesLoaded.getClass();
                return new MessageListState.LoadedMessages(loadingMessages2.metadata, loadingMessages2.preferences, Okio.toPersistentList(messagesLoaded.messages));
            case BasicTextKt.ShiftMeta /* 12 */:
                MessageListState.SearchingMessages searchingMessages = (MessageListState.SearchingMessages) obj;
                if (obj2 != null) {
                    throw new ClassCastException();
                }
                searchingMessages.getClass();
                throw null;
            case 13:
                MessageListState.SearchingMessages searchingMessages2 = (MessageListState.SearchingMessages) obj;
                if (obj2 != null) {
                    throw new ClassCastException();
                }
                searchingMessages2.getClass();
                throw null;
            case 14:
                MessageListState.SearchingMessages searchingMessages3 = (MessageListState.SearchingMessages) obj;
                if (obj2 != null) {
                    throw new ClassCastException();
                }
                searchingMessages3.getClass();
                throw null;
            case OffsetKt.Horizontal /* 15 */:
                MessageListState.WarmingUp warmingUp = (MessageListState.WarmingUp) obj;
                MessageListEvent.UpdatePreferences updatePreferences = (MessageListEvent.UpdatePreferences) obj2;
                warmingUp.getClass();
                updatePreferences.getClass();
                return MessageListState.WarmingUp.copy$default(warmingUp, null, updatePreferences.preferences, null, 5);
            case 16:
                MessageListState.WarmingUp warmingUp2 = (MessageListState.WarmingUp) obj;
                MessageListEvent.SortCriteriaLoaded sortCriteriaLoaded = (MessageListEvent.SortCriteriaLoaded) obj2;
                warmingUp2.getClass();
                sortCriteriaLoaded.getClass();
                return Sink$CC.$default$withMetadata(warmingUp2, new ForwardingFileSystem$$ExternalSyntheticLambda0(13, sortCriteriaLoaded));
            case 17:
                MessageListState.WarmingUp warmingUp3 = (MessageListState.WarmingUp) obj;
                warmingUp3.getClass();
                ((MessageListEvent.AllConfigsReady) obj2).getClass();
                return Boolean.valueOf(warmingUp3.isReady());
            case 18:
                MessageListState.WarmingUp warmingUp4 = (MessageListState.WarmingUp) obj;
                warmingUp4.getClass();
                ((MessageListEvent.AllConfigsReady) obj2).getClass();
                MessageListMetadata messageListMetadata2 = warmingUp4.metadata;
                MessageListPreferences messageListPreferences2 = warmingUp4.preferences;
                if (messageListPreferences2 != null) {
                    return new MessageListState.LoadingMessages(0.0f, messageListMetadata2, messageListPreferences2, SmallPersistentVector.EMPTY);
                }
                UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                return null;
            case 19:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new OpenMessageSideEffect.Factory((Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), 2);
            case 20:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LoadPreferencesSideEffect.Factory((Logger) scope3.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (GetMessageListPreferences) scope3.resolve(Reflection.getOrCreateKotlinClass(GetMessageListPreferences.class), null, null), objArr3 == true ? 1 : 0);
            case 21:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LoadPreferencesSideEffect.Factory((Logger) scope4.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (BuildSwipeActions) scope4.resolve(Reflection.getOrCreateKotlinClass(BuildSwipeActions.class), null, null), i);
            case 22:
                Scope scope5 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope5.getClass();
                parametersHolder.getClass();
                Object orNull = parametersHolder.getOrNull(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class));
                if (orNull != null) {
                    final Set set = ((MessageListContract$ViewModel.Args) orNull).accountIds;
                    final Logger logger = (Logger) scope5.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                    final GetSortCriteriaPerAccount getSortCriteriaPerAccount = (GetSortCriteriaPerAccount) scope5.resolve(Reflection.getOrCreateKotlinClass(GetSortCriteriaPerAccount.class), null, null);
                    return new MessageListStateSideEffectHandlerFactory(set, logger, getSortCriteriaPerAccount) { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadSortCriteriaStateSideEffectHandler$Factory
                        public final Set accounts;
                        public final GetSortCriteriaPerAccount getSortCriteriaPerAccount;
                        public final Logger logger;

                        {
                            this.accounts = set;
                            this.logger = logger;
                            this.getSortCriteriaPerAccount = getSortCriteriaPerAccount;
                        }

                        @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory
                        public final MessageListStateSideEffectHandler create(CloseableCoroutineScope closeableCoroutineScope, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$12) {
                            return new ChangeSortCriteriaSideEffect(this.accounts, composableLambdaImpl$invoke$1, this.logger, this.getSortCriteriaPerAccount);
                        }
                    };
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class)) + '\'');
            case 23:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LoadPreferencesSideEffect.Factory((Logger) scope6.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (LegacyUpdateSortCriteria) scope6.resolve(Reflection.getOrCreateKotlinClass(LegacyUpdateSortCriteria.class), null, null), i4);
            case 24:
                Scope scope7 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope7.getClass();
                parametersHolder2.getClass();
                Object orNull2 = parametersHolder2.getOrNull(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class));
                if (orNull2 != null) {
                    MessageListContract$ViewModel.Args args = (MessageListContract$ViewModel.Args) orNull2;
                    return new LoadFolderInformationSideEffect.Factory(args.accountIds, args.folderId, (Logger) scope7.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (DefaultFolderRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (DefaultAccountProfileRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class)) + '\'');
            case 25:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new OpenMessageSideEffect.Factory((Logger) scope8.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), 1);
            case 26:
                Scope scope9 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope9.getClass();
                parametersHolder3.getClass();
                Object orNull3 = parametersHolder3.getOrNull(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class));
                if (orNull3 != null) {
                    return new LoadPreferencesSideEffect.Factory((Logger) scope9.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), ((MessageListContract$ViewModel.Args) orNull3).legacyMessageListBridge, i2);
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.Args.class)) + '\'');
            case 27:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new OpenMessageSideEffect.Factory((Logger) scope10.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), 0);
            case 28:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new OpenMessageSideEffect.Factory((Logger) scope11.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), 3);
            default:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultCssVariableNameProvider((DefaultCssClassNameProvider) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null));
        }
    }
}
