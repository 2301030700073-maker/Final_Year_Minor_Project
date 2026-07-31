package org.wikipedia.suggestededits.provider;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextImageWithMissingCaption$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $lang;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ long $retryLimit;
    public final /* synthetic */ Ref$ObjectRef $title;
    public int I$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextImageWithMissingCaption$2(String str, long j, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.$lang = str;
        this.$retryLimit = j;
        this.$title = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new EditingSuggestionsProvider$getNextImageWithMissingCaption$2(this.$lang, this.$title, this.$retryLimit, continuation);
            default:
                return new EditingSuggestionsProvider$getNextImageWithMissingCaption$2(this.$lang, this.$retryLimit, this.$title, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((EditingSuggestionsProvider$getNextImageWithMissingCaption$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01e4 A[Catch: MwException -> 0x0148, all -> 0x0282, TryCatch #2 {MwException -> 0x0148, blocks: (B:97:0x0142, B:99:0x019d, B:101:0x01a3, B:103:0x01a7, B:104:0x01b0, B:106:0x01b6, B:108:0x01c3, B:111:0x01ca, B:113:0x01d2, B:115:0x01da, B:123:0x01e4, B:124:0x01e6, B:125:0x01ea, B:127:0x01f0, B:129:0x0201, B:132:0x020b, B:135:0x0212, B:138:0x0237, B:141:0x023b, B:143:0x0250, B:145:0x0256, B:148:0x025c, B:159:0x0233, B:166:0x0264, B:168:0x026c, B:174:0x0188), top: B:96:0x0142, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f0 A[Catch: MwException -> 0x0148, all -> 0x0282, TryCatch #2 {MwException -> 0x0148, blocks: (B:97:0x0142, B:99:0x019d, B:101:0x01a3, B:103:0x01a7, B:104:0x01b0, B:106:0x01b6, B:108:0x01c3, B:111:0x01ca, B:113:0x01d2, B:115:0x01da, B:123:0x01e4, B:124:0x01e6, B:125:0x01ea, B:127:0x01f0, B:129:0x0201, B:132:0x020b, B:135:0x0212, B:138:0x0237, B:141:0x023b, B:143:0x0250, B:145:0x0256, B:148:0x025c, B:159:0x0233, B:166:0x0264, B:168:0x026c, B:174:0x0188), top: B:96:0x0142, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x023b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x026c A[Catch: MwException -> 0x0148, all -> 0x0282, TRY_LEAVE, TryCatch #2 {MwException -> 0x0148, blocks: (B:97:0x0142, B:99:0x019d, B:101:0x01a3, B:103:0x01a7, B:104:0x01b0, B:106:0x01b6, B:108:0x01c3, B:111:0x01ca, B:113:0x01d2, B:115:0x01da, B:123:0x01e4, B:124:0x01e6, B:125:0x01ea, B:127:0x01f0, B:129:0x0201, B:132:0x020b, B:135:0x0212, B:138:0x0237, B:141:0x023b, B:143:0x0250, B:145:0x0256, B:148:0x025c, B:159:0x0233, B:166:0x0264, B:168:0x026c, B:174:0x0188), top: B:96:0x0142, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x017e A[Catch: all -> 0x0282, TRY_LEAVE, TryCatch #1 {all -> 0x0282, blocks: (B:97:0x0142, B:99:0x019d, B:101:0x01a3, B:103:0x01a7, B:104:0x01b0, B:106:0x01b6, B:108:0x01c3, B:111:0x01ca, B:113:0x01d2, B:115:0x01da, B:123:0x01e4, B:124:0x01e6, B:125:0x01ea, B:127:0x01f0, B:129:0x0201, B:132:0x020b, B:135:0x0212, B:138:0x0237, B:141:0x023b, B:143:0x0250, B:145:0x0256, B:148:0x025c, B:156:0x021c, B:159:0x0233, B:166:0x0264, B:168:0x026c, B:170:0x0177, B:172:0x017e, B:174:0x0188, B:183:0x0278, B:187:0x0159, B:189:0x0161, B:190:0x0166, B:192:0x016e, B:193:0x0174), top: B:92:0x013c, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009c A[Catch: all -> 0x0131, TRY_LEAVE, TryCatch #0 {all -> 0x0131, blocks: (B:8:0x0021, B:10:0x0088, B:12:0x008e, B:14:0x0092, B:15:0x0096, B:17:0x009c, B:20:0x00aa, B:24:0x00b2, B:26:0x00ba, B:28:0x00be, B:31:0x00c8, B:38:0x00d2, B:40:0x00e4, B:43:0x00eb, B:46:0x00fc, B:34:0x0102, B:55:0x0108, B:57:0x010f, B:61:0x0062, B:63:0x006a, B:68:0x011b, B:71:0x0129, B:75:0x0125, B:79:0x0035, B:81:0x003d, B:82:0x0042, B:83:0x0044, B:85:0x0055, B:87:0x005b), top: B:4:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010f A[Catch: all -> 0x0131, TryCatch #0 {all -> 0x0131, blocks: (B:8:0x0021, B:10:0x0088, B:12:0x008e, B:14:0x0092, B:15:0x0096, B:17:0x009c, B:20:0x00aa, B:24:0x00b2, B:26:0x00ba, B:28:0x00be, B:31:0x00c8, B:38:0x00d2, B:40:0x00e4, B:43:0x00eb, B:46:0x00fc, B:34:0x0102, B:55:0x0108, B:57:0x010f, B:61:0x0062, B:63:0x006a, B:68:0x011b, B:71:0x0129, B:75:0x0125, B:79:0x0035, B:81:0x003d, B:82:0x0042, B:83:0x0044, B:85:0x0055, B:87:0x005b), top: B:4:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x006a A[Catch: all -> 0x0131, TryCatch #0 {all -> 0x0131, blocks: (B:8:0x0021, B:10:0x0088, B:12:0x008e, B:14:0x0092, B:15:0x0096, B:17:0x009c, B:20:0x00aa, B:24:0x00b2, B:26:0x00ba, B:28:0x00be, B:31:0x00c8, B:38:0x00d2, B:40:0x00e4, B:43:0x00eb, B:46:0x00fc, B:34:0x0102, B:55:0x0108, B:57:0x010f, B:61:0x0062, B:63:0x006a, B:68:0x011b, B:71:0x0129, B:75:0x0125, B:79:0x0035, B:81:0x003d, B:82:0x0042, B:83:0x0044, B:85:0x0055, B:87:0x005b), top: B:4:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0125 A[Catch: all -> 0x0131, TryCatch #0 {all -> 0x0131, blocks: (B:8:0x0021, B:10:0x0088, B:12:0x008e, B:14:0x0092, B:15:0x0096, B:17:0x009c, B:20:0x00aa, B:24:0x00b2, B:26:0x00ba, B:28:0x00be, B:31:0x00c8, B:38:0x00d2, B:40:0x00e4, B:43:0x00eb, B:46:0x00fc, B:34:0x0102, B:55:0x0108, B:57:0x010f, B:61:0x0062, B:63:0x006a, B:68:0x011b, B:71:0x0129, B:75:0x0125, B:79:0x0035, B:81:0x003d, B:82:0x0042, B:83:0x0044, B:85:0x0055, B:87:0x005b), top: B:4:0x001b }] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r13v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Iterable] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:142:0x0198 -> B:83:0x019d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0068 -> B:42:0x0108). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0083 -> B:10:0x0088). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextImageWithMissingCaption$2(String str, Ref$ObjectRef ref$ObjectRef, long j, Continuation continuation) {
        super(2, continuation);
        this.$lang = str;
        this.$title = ref$ObjectRef;
        this.$retryLimit = j;
    }
}
