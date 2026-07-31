package androidx.paging;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PageEvent {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Drop extends PageEvent {
        public abstract int getPageCount();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Insert extends PageEvent {
        public final LoadType loadType;
        public final LoadStates mediatorLoadStates;
        public final List pages;
        public final int placeholdersAfter;
        public final int placeholdersBefore;
        public final LoadStates sourceLoadStates;

        public Insert(LoadType loadType, List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2) {
            this.loadType = loadType;
            this.pages = list;
            this.placeholdersBefore = i;
            this.placeholdersAfter = i2;
            this.sourceLoadStates = loadStates;
            this.mediatorLoadStates = loadStates2;
            if (loadType != LoadType.APPEND && i < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Prepend insert defining placeholdersBefore must be > 0, but was "));
                throw null;
            }
            if (loadType != LoadType.PREPEND && i2 < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i2, "Append insert defining placeholdersAfter must be > 0, but was "));
                throw null;
            }
            if (loadType == LoadType.REFRESH && list.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself.");
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Insert)) {
                return false;
            }
            Insert insert = (Insert) obj;
            return this.loadType == insert.loadType && Intrinsics.areEqual(this.pages, insert.pages) && this.placeholdersBefore == insert.placeholdersBefore && this.placeholdersAfter == insert.placeholdersAfter && this.sourceLoadStates.equals(insert.sourceLoadStates) && Intrinsics.areEqual(this.mediatorLoadStates, insert.mediatorLoadStates);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
        /* JADX WARN: Type inference failed for: r10v8, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r11v7, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r14v3, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00dc -> B:10:0x00eb). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0087 -> B:17:0x00a4). Please report as a decompilation issue!!! */
        @Override // androidx.paging.PageEvent
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object filter(kotlin.jvm.functions.Function2 r18, kotlin.coroutines.Continuation r19) {
            /*
                Method dump skipped, instructions count: 312
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.filter(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public final int hashCode() {
            int hashCode = (this.sourceLoadStates.hashCode() + ((((Modifier.CC.m(this.loadType.hashCode() * 31, 31, this.pages) + this.placeholdersBefore) * 31) + this.placeholdersAfter) * 31)) * 31;
            LoadStates loadStates = this.mediatorLoadStates;
            return hashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:13:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
        /* JADX WARN: Type inference failed for: r12v8, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r8v8, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00d2 -> B:10:0x00d9). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x007f -> B:11:0x00a0). Please report as a decompilation issue!!! */
        @Override // androidx.paging.PageEvent
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object map(kotlin.jvm.functions.Function2 r18, kotlin.coroutines.Continuation r19) {
            /*
                Method dump skipped, instructions count: 263
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.map(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public final String toString() {
            List list;
            List list2;
            List list3 = this.pages;
            Iterator it = list3.iterator();
            int i = 0;
            while (it.hasNext()) {
                i += ((TransformablePage) it.next()).data.size();
            }
            int i2 = this.placeholdersBefore;
            String valueOf = i2 != -1 ? String.valueOf(i2) : "none";
            int i3 = this.placeholdersAfter;
            String valueOf2 = i3 != -1 ? String.valueOf(i3) : "none";
            StringBuilder sb = new StringBuilder("PageEvent.Insert for ");
            sb.append(this.loadType);
            sb.append(", with ");
            sb.append(i);
            sb.append(" items (\n                    |   first item: ");
            TransformablePage transformablePage = (TransformablePage) CollectionsKt.firstOrNull(list3);
            Object obj = null;
            sb.append((transformablePage == null || (list2 = transformablePage.data) == null) ? null : CollectionsKt.firstOrNull(list2));
            sb.append("\n                    |   last item: ");
            TransformablePage transformablePage2 = (TransformablePage) CollectionsKt.lastOrNull(list3);
            if (transformablePage2 != null && (list = transformablePage2.data) != null) {
                obj = CollectionsKt.lastOrNull(list);
            }
            sb.append(obj);
            sb.append("\n                    |   placeholdersBefore: ");
            sb.append(valueOf);
            sb.append("\n                    |   placeholdersAfter: ");
            sb.append(valueOf2);
            sb.append("\n                    |   sourceLoadStates: ");
            sb.append(this.sourceLoadStates);
            sb.append("\n                    ");
            String sb2 = sb.toString();
            LoadStates loadStates = this.mediatorLoadStates;
            if (loadStates != null) {
                sb2 = sb2 + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return StringsKt__IndentKt.trimMargin$default(sb2.concat("|)"));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadStateUpdate extends PageEvent {
        public final LoadStates mediator;
        public final LoadStates source;

        public LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2) {
            this.source = loadStates;
            this.mediator = loadStates2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadStateUpdate)) {
                return false;
            }
            LoadStateUpdate loadStateUpdate = (LoadStateUpdate) obj;
            return this.source.equals(loadStateUpdate.source) && Intrinsics.areEqual(this.mediator, loadStateUpdate.mediator);
        }

        public final int hashCode() {
            int hashCode = this.source.hashCode() * 31;
            LoadStates loadStates = this.mediator;
            return hashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        public final String toString() {
            String str = "PageEvent.LoadStateUpdate (\n                    |   sourceLoadStates: " + this.source + "\n                    ";
            LoadStates loadStates = this.mediator;
            if (loadStates != null) {
                str = str + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return StringsKt__IndentKt.trimMargin$default(str.concat("|)"));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class StaticList extends PageEvent {
    }

    public Object filter(Function2 function2, Continuation continuation) {
        return this;
    }

    public Object map(Function2 function2, Continuation continuation) {
        return this;
    }
}
