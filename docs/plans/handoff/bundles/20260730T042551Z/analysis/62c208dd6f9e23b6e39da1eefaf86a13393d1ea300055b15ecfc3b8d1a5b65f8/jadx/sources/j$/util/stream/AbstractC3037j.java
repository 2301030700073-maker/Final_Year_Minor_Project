package j$.util.stream;

import j$.util.stream.Collector;
import java.util.stream.Collector;

/* renamed from: j$.util.stream.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3037j {
    public static /* synthetic */ Collector.Characteristics a(Collector.Characteristics characteristics) {
        if (characteristics == null) {
            return null;
        }
        return characteristics == Collector.Characteristics.CONCURRENT ? Collector.Characteristics.CONCURRENT : characteristics == Collector.Characteristics.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH;
    }

    public static /* synthetic */ Collector.Characteristics b(Collector.Characteristics characteristics) {
        if (characteristics == null) {
            return null;
        }
        return characteristics == Collector.Characteristics.CONCURRENT ? Collector.Characteristics.CONCURRENT : characteristics == Collector.Characteristics.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH;
    }
}
