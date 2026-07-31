package androidx.compose.runtime.tooling;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.ReversedListReadOnly;
import kotlin.collections.builders.ListBuilder;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiagnosticComposeException extends RuntimeException {
    private final ComposeStackTrace trace;

    public DiagnosticComposeException(ComposeStackTrace composeStackTrace) {
        this.trace = composeStackTrace;
        if (composeStackTrace.hasSourceInformation) {
            return;
        }
        int[] iArr = {201, 202, 204, 206, 207, Token.IF, -127, 126665345, 200};
        List list = composeStackTrace.frames;
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) list.get(i);
            if (!ArraysKt.contains(iArr, composeStackTraceFrame.groupKey)) {
                if (composeStackTraceFrame.groupKey == 100) {
                    int i3 = i + 2;
                    if (i3 < size && ((ComposeStackTraceFrame) list.get(i3)).groupKey == 1000) {
                        break;
                    } else {
                        CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList);
                    }
                } else {
                    arrayList.add(composeStackTraceFrame);
                }
            }
            i = i2;
        }
        int size2 = arrayList.size();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            stackTraceElementArr[i4] = new StackTraceElement("$$compose", "m$" + ((ComposeStackTraceFrame) arrayList.get(i4)).groupKey, "SourceFile", 1);
        }
        setStackTrace(stackTraceElementArr);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        if (!this.trace.hasSourceInformation) {
            return "Composition stack when thrown:";
        }
        StringBuilder sb = new StringBuilder("Composition stack when thrown:\n");
        ComposeStackTrace composeStackTrace = this.trace;
        ListBuilder createListBuilder = Jsoup.createListBuilder();
        List list = composeStackTrace.frames;
        list.getClass();
        ReversedListReadOnly reversedListReadOnly = new ReversedListReadOnly(list);
        int size = reversedListReadOnly.getSize();
        for (int i = 0; i < size; i++) {
            ((ComposeStackTraceFrame) reversedListReadOnly.get(i)).getClass();
        }
        ListBuilder build = createListBuilder.build();
        build.getClass();
        ReversedListReadOnly reversedListReadOnly2 = new ReversedListReadOnly(build);
        int size2 = reversedListReadOnly2.getSize();
        for (int i2 = 0; i2 < size2; i2++) {
            String str = (String) reversedListReadOnly2.get(i2);
            sb.append("\tat ");
            sb.append(str);
            sb.append('\n');
        }
        return sb.toString();
    }
}
