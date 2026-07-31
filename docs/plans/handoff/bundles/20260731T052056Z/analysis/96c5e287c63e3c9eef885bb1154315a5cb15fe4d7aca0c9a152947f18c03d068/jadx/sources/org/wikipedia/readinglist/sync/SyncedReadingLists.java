package org.wikipedia.readinglist.sync;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SyncedReadingLists {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final String continueStr;
    public final List entries;
    public final List lists;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SyncedReadingLists$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RemoteIdResponse {
        public static final Companion Companion = new Companion();
        public final long id;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SyncedReadingLists$RemoteIdResponse$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RemoteIdResponse(long j, int i) {
            if ((i & 1) == 0) {
                this.id = 0L;
            } else {
                this.id = j;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RemoteIdResponseBatch {
        public final RemoteIdResponse[] batch;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(3))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SyncedReadingLists$RemoteIdResponseBatch$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RemoteIdResponseBatch(int i, RemoteIdResponse[] remoteIdResponseArr) {
            if ((i & 1) == 0) {
                this.batch = new RemoteIdResponse[0];
            } else {
                this.batch = remoteIdResponseArr;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(1)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(2)), null};
    }

    public /* synthetic */ SyncedReadingLists(int i, String str, List list, List list2) {
        if ((i & 1) == 0) {
            this.lists = null;
        } else {
            this.lists = list;
        }
        if ((i & 2) == 0) {
            this.entries = null;
        } else {
            this.entries = list2;
        }
        if ((i & 4) == 0) {
            this.continueStr = null;
        } else {
            this.continueStr = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SyncedReadingLists)) {
            return false;
        }
        SyncedReadingLists syncedReadingLists = (SyncedReadingLists) obj;
        return Intrinsics.areEqual(this.lists, syncedReadingLists.lists) && Intrinsics.areEqual(this.entries, syncedReadingLists.entries) && Intrinsics.areEqual(this.continueStr, syncedReadingLists.continueStr);
    }

    public final int hashCode() {
        List list = this.lists;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.entries;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.continueStr;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SyncedReadingLists(lists=");
        sb.append(this.lists);
        sb.append(", entries=");
        sb.append(this.entries);
        sb.append(", continueStr=");
        return Animation.CC.m(sb, this.continueStr, ")");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RemoteReadingListEntryBatch {
        public final List batch;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(4))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SyncedReadingLists$RemoteReadingListEntryBatch$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RemoteReadingListEntryBatch(List list, int i) {
            if (1 == (i & 1)) {
                this.batch = list;
            } else {
                TuplesKt.throwMissingFieldException(i, 1, SyncedReadingLists$RemoteReadingListEntryBatch$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RemoteReadingListEntryBatch) && Intrinsics.areEqual(this.batch, ((RemoteReadingListEntryBatch) obj).batch);
        }

        public final int hashCode() {
            return this.batch.hashCode();
        }

        public final String toString() {
            return "RemoteReadingListEntryBatch(batch=" + this.batch + ")";
        }

        public RemoteReadingListEntryBatch(List list) {
            this.batch = list;
        }
    }

    public SyncedReadingLists(ArrayList arrayList, ArrayList arrayList2) {
        this.lists = arrayList;
        this.entries = arrayList2;
        this.continueStr = null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RemoteReadingListEntry {
        public static final Companion Companion = new Companion();
        public final LocalDateTime created;
        public final long id;
        public final boolean isDeleted;
        public final long listId;
        public final String project;
        public final String title;
        public final LocalDateTime updated;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SyncedReadingLists$RemoteReadingListEntry$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RemoteReadingListEntry(int i, long j, long j2, String str, String str2, boolean z, LocalDateTime localDateTime, LocalDateTime localDateTime2) {
            if (12 != (i & 12)) {
                TuplesKt.throwMissingFieldException(i, 12, SyncedReadingLists$RemoteReadingListEntry$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            if ((i & 1) == 0) {
                this.id = -1L;
            } else {
                this.id = j;
            }
            if ((i & 2) == 0) {
                this.listId = -1L;
            } else {
                this.listId = j2;
            }
            this.project = str;
            this.title = str2;
            if ((i & 16) == 0) {
                this.isDeleted = false;
            } else {
                this.isDeleted = z;
            }
            if ((i & 32) == 0) {
                LocalDateTime now = LocalDateTime.now();
                now.getClass();
                this.created = now;
            } else {
                this.created = localDateTime;
            }
            if ((i & 64) != 0) {
                this.updated = localDateTime2;
                return;
            }
            LocalDateTime now2 = LocalDateTime.now();
            now2.getClass();
            this.updated = now2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteReadingListEntry)) {
                return false;
            }
            RemoteReadingListEntry remoteReadingListEntry = (RemoteReadingListEntry) obj;
            return this.id == remoteReadingListEntry.id && this.listId == remoteReadingListEntry.listId && Intrinsics.areEqual(this.project, remoteReadingListEntry.project) && Intrinsics.areEqual(this.title, remoteReadingListEntry.title) && this.isDeleted == remoteReadingListEntry.isDeleted && Intrinsics.areEqual(this.created, remoteReadingListEntry.created) && Intrinsics.areEqual(this.updated, remoteReadingListEntry.updated);
        }

        public final int hashCode() {
            long j = this.id;
            long j2 = this.listId;
            return this.updated.hashCode() + ((this.created.hashCode() + ((Animation.CC.m(Animation.CC.m(((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31, 31, this.project), 31, this.title) + (this.isDeleted ? 1231 : 1237)) * 31)) * 31);
        }

        public final String toString() {
            return "RemoteReadingListEntry(id=" + this.id + ", listId=" + this.listId + ", project=" + this.project + ", title=" + this.title + ", isDeleted=" + this.isDeleted + ", created=" + this.created + ", updated=" + this.updated + ")";
        }

        public RemoteReadingListEntry(String str, String str2, LocalDateTime localDateTime, LocalDateTime localDateTime2) {
            this.id = 0L;
            this.listId = 0L;
            this.project = str;
            this.title = str2;
            this.isDeleted = false;
            this.created = localDateTime;
            this.updated = localDateTime2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RemoteReadingList {
        public static final Companion Companion = new Companion();
        public final LocalDateTime created;
        public final String description;
        public final long id;
        public final boolean isDefault;
        public final boolean isDeleted;
        public final String name;
        public final LocalDateTime updated;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SyncedReadingLists$RemoteReadingList$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RemoteReadingList(int i, long j, boolean z, String str, String str2, boolean z2, LocalDateTime localDateTime, LocalDateTime localDateTime2) {
            if (4 != (i & 4)) {
                TuplesKt.throwMissingFieldException(i, 4, SyncedReadingLists$RemoteReadingList$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.id = (i & 1) == 0 ? 0L : j;
            if ((i & 2) == 0) {
                this.isDefault = false;
            } else {
                this.isDefault = z;
            }
            this.name = str;
            if ((i & 8) == 0) {
                this.description = null;
            } else {
                this.description = str2;
            }
            if ((i & 16) == 0) {
                this.isDeleted = false;
            } else {
                this.isDeleted = z2;
            }
            if ((i & 32) == 0) {
                LocalDateTime now = LocalDateTime.now();
                now.getClass();
                this.created = now;
            } else {
                this.created = localDateTime;
            }
            if ((i & 64) != 0) {
                this.updated = localDateTime2;
                return;
            }
            LocalDateTime now2 = LocalDateTime.now();
            now2.getClass();
            this.updated = now2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteReadingList)) {
                return false;
            }
            RemoteReadingList remoteReadingList = (RemoteReadingList) obj;
            return this.id == remoteReadingList.id && this.isDefault == remoteReadingList.isDefault && Intrinsics.areEqual(this.name, remoteReadingList.name) && Intrinsics.areEqual(this.description, remoteReadingList.description) && this.isDeleted == remoteReadingList.isDeleted && Intrinsics.areEqual(this.created, remoteReadingList.created) && Intrinsics.areEqual(this.updated, remoteReadingList.updated);
        }

        public final int hashCode() {
            long j = this.id;
            int m = Animation.CC.m(((((int) (j ^ (j >>> 32))) * 31) + (this.isDefault ? 1231 : 1237)) * 31, 31, this.name);
            String str = this.description;
            int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
            int i = this.isDeleted ? 1231 : 1237;
            return this.updated.hashCode() + ((this.created.hashCode() + ((hashCode + i) * 31)) * 31);
        }

        public final String name() {
            String normalize = Normalizer.normalize(this.name, Normalizer.Form.NFC);
            normalize.getClass();
            return normalize;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RemoteReadingList(id=");
            sb.append(this.id);
            sb.append(", isDefault=");
            sb.append(this.isDefault);
            Modifier.CC.m(sb, ", name=", this.name, ", description=", this.description);
            sb.append(", isDeleted=");
            sb.append(this.isDeleted);
            sb.append(", created=");
            sb.append(this.created);
            sb.append(", updated=");
            sb.append(this.updated);
            sb.append(")");
            return sb.toString();
        }

        public RemoteReadingList(String str, String str2) {
            LocalDateTime now = LocalDateTime.now();
            now.getClass();
            LocalDateTime now2 = LocalDateTime.now();
            now2.getClass();
            this.id = 0L;
            this.isDefault = false;
            this.name = str;
            this.description = str2;
            this.isDeleted = false;
            this.created = now;
            this.updated = now2;
        }
    }
}
