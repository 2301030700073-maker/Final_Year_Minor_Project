package kotlinx.datetime.internal.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.datetime.internal.format.formatter.ConditionalFormatter;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ConcatenatedFormatStructure implements FormatStructure {
    public final List formats;

    public ConcatenatedFormatStructure(List list) {
        list.getClass();
        this.formats = list;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConcatenatedFormatStructure) {
            return Intrinsics.areEqual(this.formats, ((ConcatenatedFormatStructure) obj).formats);
        }
        return false;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public FormatterStructure formatter() {
        List list = this.formats;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((NonConcatenatedFormatStructure) it.next()).formatter());
        }
        return arrayList.size() == 1 ? (FormatterStructure) CollectionsKt.single(arrayList) : new ConditionalFormatter(1, arrayList);
    }

    public final int hashCode() {
        return this.formats.hashCode();
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public ParserStructure parser() {
        List list = this.formats;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((NonConcatenatedFormatStructure) it.next()).parser());
        }
        return UuidKt.concat(arrayList);
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("ConcatenatedFormatStructure("), CollectionsKt.joinToString$default(this.formats, ", ", null, null, null, 62), ')');
    }
}
