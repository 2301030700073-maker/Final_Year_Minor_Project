package kotlinx.datetime.internal.format.parser;

import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: kotlinx.datetime.internal.format.parser.Parser$match-impl$$inlined$sortByDescending$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class Parser$matchimpl$$inlined$sortByDescending$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.valueOf(((ParseError) obj2).position).compareTo(Integer.valueOf(((ParseError) obj).position));
    }
}
