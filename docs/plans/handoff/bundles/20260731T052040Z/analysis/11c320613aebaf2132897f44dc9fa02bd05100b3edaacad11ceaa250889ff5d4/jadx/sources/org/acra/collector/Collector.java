package org.acra.collector;

import android.content.Context;
import kotlin.enums.EnumEntries;
import okio.Okio;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.plugins.Plugin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Collector extends Plugin {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Order {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Order[] $VALUES;
        public static final Order FIRST = new Order("FIRST", 0);
        public static final Order EARLY = new Order("EARLY", 1);
        public static final Order NORMAL = new Order("NORMAL", 2);
        public static final Order LATE = new Order("LATE", 3);
        public static final Order LAST = new Order("LAST", 4);

        private static final /* synthetic */ Order[] $values() {
            return new Order[]{FIRST, EARLY, NORMAL, LATE, LAST};
        }

        static {
            Order[] $values = $values();
            $VALUES = $values;
            $ENTRIES = Okio.enumEntries($values);
        }

        private Order(String str, int i) {
        }

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        public static Order valueOf(String str) {
            return (Order) Enum.valueOf(Order.class, str);
        }

        public static Order[] values() {
            return (Order[]) $VALUES.clone();
        }
    }

    void collect(Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData);

    @Override // org.acra.plugins.Plugin
    /* bridge */ /* synthetic */ boolean enabled(CoreConfiguration coreConfiguration);

    Order getOrder();
}
