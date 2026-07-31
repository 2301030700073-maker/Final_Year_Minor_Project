package org.jetbrains.compose.resources;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.encoding.Base64;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jetbrains.compose.resources.plural.PluralCategory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringResourcesUtilsKt$getStringItem$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ ResourceItem $resourceItem;
    final /* synthetic */ ResourceReader $resourceReader;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringResourcesUtilsKt$getStringItem$2(ResourceReader resourceReader, ResourceItem resourceItem, Continuation continuation) {
        super(1, continuation);
        this.$resourceReader = resourceReader;
        this.$resourceItem = resourceItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new StringResourcesUtilsKt$getStringItem$2(this.$resourceReader, this.$resourceItem, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ResourceReader resourceReader = this.$resourceReader;
            ResourceItem resourceItem = this.$resourceItem;
            String str = resourceItem.path;
            long j = resourceItem.offset;
            long j2 = resourceItem.size;
            this.label = 1;
            ((DefaultAndroidResourceReader) resourceReader).getClass();
            InputStream resourceAsStream = DefaultAndroidResourceReader.getResourceAsStream(str);
            int i2 = (int) j2;
            byte[] bArr = new byte[i2];
            long j3 = 0;
            while (j3 < j) {
                try {
                    long skip = resourceAsStream.skip(j - j3);
                    if (skip == 0) {
                        break;
                    }
                    j3 += skip;
                } finally {
                }
            }
            int i3 = 0;
            while (i3 < i2) {
                int read = resourceAsStream.read(bArr, i3, i2 - i3);
                if (read <= 0) {
                    break;
                }
                i3 += read;
            }
            resourceAsStream.close();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (bArr == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = bArr;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        List split$default = StringsKt.split$default(StringsKt__StringsJVMKt.decodeToString((byte[]) obj), new char[]{'|'});
        String str2 = (String) CollectionsKt.first(split$default);
        String str3 = (String) CollectionsKt.last(split$default);
        if (!Intrinsics.areEqual(str2, "plurals")) {
            if (!Intrinsics.areEqual(str2, "string-array")) {
                Regex regex = StringResourcesUtilsKt.SimpleStringFormatRegex;
                return new StringItem$Value(StringsKt__StringsJVMKt.decodeToString(Base64.decode$default(Base64.Default, str3, 0, 6)));
            }
            Regex regex2 = StringResourcesUtilsKt.SimpleStringFormatRegex;
            List split$default2 = StringsKt.split$default(str3, new String[]{","}, 6);
            final ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(split$default2, 10));
            Iterator it = split$default2.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt__StringsJVMKt.decodeToString(Base64.decode$default(Base64.Default, (String) it.next(), 0, 6)));
            }
            return new Object(arrayList) { // from class: org.jetbrains.compose.resources.StringItem$Array
                public final ArrayList items;

                {
                    this.items = arrayList;
                }

                public final boolean equals(Object obj3) {
                    if (this == obj3) {
                        return true;
                    }
                    return (obj3 instanceof StringItem$Array) && this.items.equals(((StringItem$Array) obj3).items);
                }

                public final int hashCode() {
                    return this.items.hashCode();
                }

                public final String toString() {
                    return "Array(items=" + this.items + ")";
                }
            };
        }
        Regex regex3 = StringResourcesUtilsKt.SimpleStringFormatRegex;
        List<String> split$default3 = StringsKt.split$default(str3, new String[]{","}, 6);
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(split$default3, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        for (String str4 : split$default3) {
            String substringBefore$default = StringsKt.substringBefore$default(str4, ':');
            int indexOf$default = StringsKt.indexOf$default(':', 0, 6, (CharSequence) str4);
            if (indexOf$default != -1) {
                str4 = str4.substring(indexOf$default + 1, str4.length());
            }
            PluralCategory.Companion.getClass();
            Iterator it2 = PluralCategory.$ENTRIES.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it2.next();
                if (StringsKt__StringsJVMKt.equals(((PluralCategory) obj2).name(), substringBefore$default)) {
                    break;
                }
            }
            PluralCategory pluralCategory = (PluralCategory) obj2;
            pluralCategory.getClass();
            Pair pair = new Pair(pluralCategory, StringsKt__StringsJVMKt.decodeToString(Base64.decode$default(Base64.Default, str4, 0, 6)));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return new Object(linkedHashMap) { // from class: org.jetbrains.compose.resources.StringItem$Plurals
            public final LinkedHashMap items;

            {
                this.items = linkedHashMap;
            }

            public final boolean equals(Object obj3) {
                if (this == obj3) {
                    return true;
                }
                return (obj3 instanceof StringItem$Plurals) && this.items.equals(((StringItem$Plurals) obj3).items);
            }

            public final int hashCode() {
                return this.items.hashCode();
            }

            public final String toString() {
                return "Plurals(items=" + this.items + ")";
            }
        };
    }
}
