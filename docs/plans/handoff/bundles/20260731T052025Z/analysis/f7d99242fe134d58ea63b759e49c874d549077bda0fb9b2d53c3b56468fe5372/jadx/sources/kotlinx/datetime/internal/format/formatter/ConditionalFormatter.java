package kotlinx.datetime.internal.format.formatter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConditionalFormatter implements FormatterStructure {
    public final /* synthetic */ int $r8$classId;
    public final Object formatters;

    public ConditionalFormatter(String str) {
        this.$r8$classId = 2;
        str.getClass();
        this.formatters = str;
    }

    @Override // kotlinx.datetime.internal.format.formatter.FormatterStructure
    public final void format(Object obj, StringBuilder sb, boolean z) {
        int i = this.$r8$classId;
        Object obj2 = this.formatters;
        switch (i) {
            case 0:
                for (Pair pair : (List) obj2) {
                    Function1 function1 = (Function1) pair.first;
                    FormatterStructure formatterStructure = (FormatterStructure) pair.second;
                    if (((Boolean) function1.invoke(obj)).booleanValue()) {
                        formatterStructure.format(obj, sb, z);
                        break;
                    }
                }
                break;
            case 1:
                Iterator it = ((ArrayList) obj2).iterator();
                while (it.hasNext()) {
                    ((FormatterStructure) it.next()).format(obj, sb, z);
                }
                break;
            default:
                sb.append((CharSequence) obj2);
                break;
        }
    }

    public /* synthetic */ ConditionalFormatter(int i, List list) {
        this.$r8$classId = i;
        this.formatters = list;
    }
}
