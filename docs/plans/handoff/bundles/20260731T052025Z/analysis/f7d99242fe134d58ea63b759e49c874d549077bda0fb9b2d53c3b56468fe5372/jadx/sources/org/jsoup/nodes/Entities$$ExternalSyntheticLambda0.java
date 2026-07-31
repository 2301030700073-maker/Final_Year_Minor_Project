package org.jsoup.nodes;

import androidx.datastore.preferences.PreferencesProto$Value;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.IdentityHashMap;
import java.util.function.Supplier;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Entities$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return new char[2];
            case 1:
                int i = IOUtils.$r8$clinit;
                return new Object[]{Boolean.FALSE, new byte[8192]};
            case 2:
                int i2 = IOUtils.$r8$clinit;
                return new Object[]{Boolean.FALSE, new char[8192]};
            case 3:
                return new ByteArrayBuffer(256);
            case 4:
                return new SoftReference(new ArrayDeque());
            case 5:
                return new StringBuilder(1024);
            case 6:
                return new String[512];
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new char[2048];
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new Elements();
            case 9:
                return new IdentityHashMap();
            default:
                return new NodeIterator(new Element(Tag.valueOf("html", "http://www.w3.org/1999/xhtml", ParseSettings.preserveCase), "", null), Element.class);
        }
    }
}
