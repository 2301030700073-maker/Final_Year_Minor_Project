package androidx.paging;

import androidx.room.Room;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SeparatorState {
    public boolean endTerminalSeparatorDeferred;
    public boolean footerAdded;
    public final FlowKt__ZipKt$combine$1$1 generator;
    public boolean headerAdded;
    public LoadStates mediatorStates;
    public int placeholdersAfter;
    public int placeholdersBefore;
    public boolean startTerminalSeparatorDeferred;
    public final TerminalSeparatorType terminalSeparatorType;
    public final ArrayList pageStash = new ArrayList();
    public final SVG sourceStates = new SVG(23);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TerminalSeparatorType.values().length];
            try {
                iArr[TerminalSeparatorType.FULLY_COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TerminalSeparatorType.SOURCE_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SeparatorState(TerminalSeparatorType terminalSeparatorType, FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1) {
        this.terminalSeparatorType = terminalSeparatorType;
        this.generator = flowKt__ZipKt$combine$1$1;
    }

    public static TransformablePage transformablePageToStash(TransformablePage transformablePage) {
        int[] iArr = transformablePage.originalPageOffsets;
        List list = transformablePage.data;
        List listOf = Room.listOf(CollectionsKt.first(list), CollectionsKt.last(list));
        int i = transformablePage.hintOriginalPageOffset;
        List list2 = transformablePage.hintOriginalIndices;
        return new TransformablePage(iArr, listOf, i, Room.listOf((Object[]) new Integer[]{Integer.valueOf(list2 != null ? ((Number) CollectionsKt.first(list2)).intValue() : 0), Integer.valueOf(list2 != null ? ((Number) CollectionsKt.last(list2)).intValue() : list.size() - 1)}));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        if (r2 == r4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0112, code lost:
    
        if (r2 == r4) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Type inference failed for: r17v0, types: [androidx.paging.SeparatorState] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.paging.PageEvent$LoadStateUpdate] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onEvent(androidx.paging.PageEvent r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onEvent(androidx.paging.PageEvent, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x02b5, code lost:
    
        if (r2 == r4) goto L265;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x06bc  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0730  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x06c5  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x06ce  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x05e0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00c2  */
    /* JADX WARN: Type inference failed for: r1v58, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0425 -> B:118:0x042b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x069d -> B:25:0x069e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x05ce -> B:57:0x05d3). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onInsert(androidx.paging.PageEvent.Insert r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
        /*
            Method dump skipped, instructions count: 1898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onInsert(androidx.paging.PageEvent$Insert, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onStaticList(androidx.paging.PageEvent.StaticList r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.paging.SeparatorState$onStaticList$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.SeparatorState$onStaticList$1 r0 = (androidx.paging.SeparatorState$onStaticList$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SeparatorState$onStaticList$1 r0 = new androidx.paging.SeparatorState$onStaticList$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.result
            int r6 = r0.label
            r0 = 0
            if (r6 == 0) goto L31
            r5 = 1
            if (r6 != r5) goto L29
            kotlin.ResultKt.throwOnFailure(r4)
            if (r4 != 0) goto L28
            throw r0
        L28:
            throw r0
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r4)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r5.getClass()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onStaticList(androidx.paging.PageEvent$StaticList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
