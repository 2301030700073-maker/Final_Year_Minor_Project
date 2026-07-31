package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.AbstractMap;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.io.Sink$CC;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageListState {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadedMessages implements MessageListState {
        public final ImmutableList messages;
        public final MessageListMetadata metadata;
        public final MessageListPreferences preferences;

        public LoadedMessages(MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList) {
            messageListMetadata.getClass();
            messageListPreferences.getClass();
            immutableList.getClass();
            this.metadata = messageListMetadata;
            this.preferences = messageListPreferences;
            this.messages = immutableList;
        }

        public static LoadedMessages copy$default(LoadedMessages loadedMessages, MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList, int i) {
            if ((i & 1) != 0) {
                messageListMetadata = loadedMessages.metadata;
            }
            if ((i & 2) != 0) {
                messageListPreferences = loadedMessages.preferences;
            }
            if ((i & 4) != 0) {
                immutableList = loadedMessages.messages;
            }
            loadedMessages.getClass();
            messageListMetadata.getClass();
            messageListPreferences.getClass();
            immutableList.getClass();
            return new LoadedMessages(messageListMetadata, messageListPreferences, immutableList);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadedMessages)) {
                return false;
            }
            LoadedMessages loadedMessages = (LoadedMessages) obj;
            return Intrinsics.areEqual(this.metadata, loadedMessages.metadata) && Intrinsics.areEqual(this.preferences, loadedMessages.preferences) && Intrinsics.areEqual(this.messages, loadedMessages.messages);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final ImmutableList getMessages() {
            return this.messages;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListMetadata getMetadata() {
            return this.metadata;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListPreferences getPreferences() {
            return this.preferences;
        }

        public final int hashCode() {
            return this.messages.hashCode() + ((this.preferences.hashCode() + (this.metadata.hashCode() * 31)) * 31);
        }

        public final LoadedMessages mapMessages(Function1 function1) {
            ImmutableList immutableList = this.messages;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(immutableList, 10));
            Iterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                arrayList.add(function1.invoke(it.next()));
            }
            return copy$default(this, null, null, Okio.toImmutableList(arrayList), 3);
        }

        public final String toString() {
            return "LoadedMessages(metadata=" + this.metadata + ", preferences=" + this.preferences + ", messages=" + this.messages + ")";
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withMetadata(Function1 function1) {
            return Sink$CC.$default$withMetadata(this, function1);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withPreferences(ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0) {
            return Sink$CC.$default$withPreferences(this, forwardingFileSystem$$ExternalSyntheticLambda0);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadingMessages implements MessageListState {
        public final ImmutableList messages;
        public final MessageListMetadata metadata;
        public final MessageListPreferences preferences;
        public final float progress;

        public LoadingMessages(float f, MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList) {
            messageListPreferences.getClass();
            immutableList.getClass();
            this.progress = f;
            this.metadata = messageListMetadata;
            this.preferences = messageListPreferences;
            this.messages = immutableList;
        }

        public static LoadingMessages copy$default(LoadingMessages loadingMessages, float f, MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList, int i) {
            if ((i & 1) != 0) {
                f = loadingMessages.progress;
            }
            loadingMessages.getClass();
            loadingMessages.getClass();
            if ((i & 8) != 0) {
                messageListMetadata = loadingMessages.metadata;
            }
            if ((i & 16) != 0) {
                messageListPreferences = loadingMessages.preferences;
            }
            if ((i & 32) != 0) {
                immutableList = loadingMessages.messages;
            }
            loadingMessages.getClass();
            messageListMetadata.getClass();
            messageListPreferences.getClass();
            immutableList.getClass();
            return new LoadingMessages(f, messageListMetadata, messageListPreferences, immutableList);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadingMessages)) {
                return false;
            }
            LoadingMessages loadingMessages = (LoadingMessages) obj;
            return Float.compare(this.progress, loadingMessages.progress) == 0 && this.metadata.equals(loadingMessages.metadata) && Intrinsics.areEqual(this.preferences, loadingMessages.preferences) && Intrinsics.areEqual(this.messages, loadingMessages.messages);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final ImmutableList getMessages() {
            return this.messages;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListMetadata getMetadata() {
            return this.metadata;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListPreferences getPreferences() {
            return this.preferences;
        }

        public final int hashCode() {
            return this.messages.hashCode() + ((this.preferences.hashCode() + ((this.metadata.hashCode() + (((((Float.floatToIntBits(this.progress) * 31) + 1237) * 31) + 1237) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "LoadingMessages(progress=" + this.progress + ", isPullToRefresh=false, isRemoteLoading=false, metadata=" + this.metadata + ", preferences=" + this.preferences + ", messages=" + this.messages + ")";
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withMetadata(Function1 function1) {
            return Sink$CC.$default$withMetadata(this, function1);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withPreferences(ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0) {
            return Sink$CC.$default$withPreferences(this, forwardingFileSystem$$ExternalSyntheticLambda0);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class SearchingMessages implements MessageListState {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SelectingMessages implements MessageListState {
        public final ImmutableList messages;
        public final MessageListMetadata metadata;
        public final MessageListPreferences preferences;
        public final int selectedCount;

        public SelectingMessages(MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList) {
            messageListMetadata.getClass();
            messageListPreferences.getClass();
            immutableList.getClass();
            this.metadata = messageListMetadata;
            this.preferences = messageListPreferences;
            this.messages = immutableList;
            int i = 0;
            if (!immutableList.isEmpty()) {
                Iterator<E> it = immutableList.iterator();
                while (it.hasNext()) {
                    if (((MessageItemUi) it.next()).selected && (i = i + 1) < 0) {
                        IntOffsetKt.throwCountOverflow();
                        throw null;
                    }
                }
            }
            this.selectedCount = i;
        }

        public static SelectingMessages copy$default(SelectingMessages selectingMessages, MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList, int i) {
            if ((i & 1) != 0) {
                messageListMetadata = selectingMessages.metadata;
            }
            if ((i & 2) != 0) {
                messageListPreferences = selectingMessages.preferences;
            }
            if ((i & 4) != 0) {
                immutableList = selectingMessages.messages;
            }
            selectingMessages.getClass();
            messageListMetadata.getClass();
            messageListPreferences.getClass();
            immutableList.getClass();
            return new SelectingMessages(messageListMetadata, messageListPreferences, immutableList);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectingMessages)) {
                return false;
            }
            SelectingMessages selectingMessages = (SelectingMessages) obj;
            return Intrinsics.areEqual(this.metadata, selectingMessages.metadata) && Intrinsics.areEqual(this.preferences, selectingMessages.preferences) && Intrinsics.areEqual(this.messages, selectingMessages.messages);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final ImmutableList getMessages() {
            return this.messages;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListMetadata getMetadata() {
            return this.metadata;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListPreferences getPreferences() {
            return this.preferences;
        }

        public final int hashCode() {
            return this.messages.hashCode() + ((this.preferences.hashCode() + (this.metadata.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "SelectingMessages(metadata=" + this.metadata + ", preferences=" + this.preferences + ", messages=" + this.messages + ")";
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withMetadata(Function1 function1) {
            return Sink$CC.$default$withMetadata(this, function1);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withPreferences(ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0) {
            return Sink$CC.$default$withPreferences(this, forwardingFileSystem$$ExternalSyntheticLambda0);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class WarmingUp implements MessageListState {
        public final ImmutableList messages;
        public final MessageListMetadata metadata;
        public final MessageListPreferences preferences;

        public WarmingUp(MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList) {
            immutableList.getClass();
            this.metadata = messageListMetadata;
            this.preferences = messageListPreferences;
            this.messages = immutableList;
        }

        public static WarmingUp copy$default(WarmingUp warmingUp, MessageListMetadata messageListMetadata, MessageListPreferences messageListPreferences, ImmutableList immutableList, int i) {
            if ((i & 1) != 0) {
                messageListMetadata = warmingUp.metadata;
            }
            if ((i & 2) != 0) {
                messageListPreferences = warmingUp.preferences;
            }
            if ((i & 4) != 0) {
                immutableList = warmingUp.messages;
            }
            warmingUp.getClass();
            messageListMetadata.getClass();
            immutableList.getClass();
            return new WarmingUp(messageListMetadata, messageListPreferences, immutableList);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WarmingUp)) {
                return false;
            }
            WarmingUp warmingUp = (WarmingUp) obj;
            return this.metadata.equals(warmingUp.metadata) && Intrinsics.areEqual(this.preferences, warmingUp.preferences) && Intrinsics.areEqual(this.messages, warmingUp.messages);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final ImmutableList getMessages() {
            return this.messages;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListMetadata getMetadata() {
            return this.metadata;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final MessageListPreferences getPreferences() {
            return this.preferences;
        }

        public final int hashCode() {
            int hashCode = this.metadata.hashCode() * 31;
            MessageListPreferences messageListPreferences = this.preferences;
            return this.messages.hashCode() + ((hashCode + (messageListPreferences == null ? 0 : messageListPreferences.hashCode())) * 31);
        }

        public final boolean isReady() {
            MessageListMetadata messageListMetadata = this.metadata;
            return (((AbstractMap) messageListMetadata.swipeActions).isEmpty() || ((AbstractMap) messageListMetadata.sortCriteriaPerAccount).isEmpty() || messageListMetadata.folder == null || this.preferences == null) ? false : true;
        }

        public final String toString() {
            return "WarmingUp(metadata=" + this.metadata + ", preferences=" + this.preferences + ", messages=" + this.messages + ")";
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withMetadata(Function1 function1) {
            return Sink$CC.$default$withMetadata(this, function1);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.MessageListState
        public final /* bridge */ MessageListState withPreferences(ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0) {
            return Sink$CC.$default$withPreferences(this, forwardingFileSystem$$ExternalSyntheticLambda0);
        }
    }

    ImmutableList getMessages();

    MessageListMetadata getMetadata();

    MessageListPreferences getPreferences();

    MessageListState withMetadata(Function1 function1);

    MessageListState withPreferences(ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0);
}
