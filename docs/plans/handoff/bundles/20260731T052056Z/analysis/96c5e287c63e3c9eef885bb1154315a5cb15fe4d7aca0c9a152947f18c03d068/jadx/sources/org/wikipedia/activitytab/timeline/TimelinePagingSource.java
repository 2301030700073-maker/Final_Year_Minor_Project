package org.wikipedia.activitytab.timeline;

import androidx.lifecycle.ViewModel;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import java.util.List;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimelinePagingSource extends PagingSource {
    public final /* synthetic */ int $r8$classId;
    public final Object sources;

    public TimelinePagingSource(PageTitle pageTitle) {
        this.$r8$classId = 3;
        pageTitle.getClass();
        this.sources = pageTitle;
    }

    @Override // androidx.paging.PagingSource
    public final void getRefreshKey(PagingState pagingState) {
        switch (this.$r8$classId) {
            case 0:
                pagingState.getClass();
                break;
            case 1:
                pagingState.getClass();
                break;
            case 2:
                pagingState.getClass();
                break;
            case 3:
                pagingState.getClass();
                break;
            default:
                pagingState.getClass();
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ef A[Catch: HttpException -> 0x0109, IOException -> 0x0111, TryCatch #6 {IOException -> 0x0111, HttpException -> 0x0109, blocks: (B:12:0x003b, B:13:0x00e9, B:15:0x00ef, B:16:0x00f3, B:18:0x00fa, B:19:0x00fc, B:26:0x0048, B:28:0x004e, B:30:0x0054, B:32:0x005d, B:34:0x0069, B:36:0x0071, B:39:0x00bb, B:42:0x00d0, B:47:0x0080, B:48:0x0089, B:50:0x008f, B:53:0x00ab, B:58:0x00af), top: B:9:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00fa A[Catch: HttpException -> 0x0109, IOException -> 0x0111, TryCatch #6 {IOException -> 0x0111, HttpException -> 0x0109, blocks: (B:12:0x003b, B:13:0x00e9, B:15:0x00ef, B:16:0x00f3, B:18:0x00fa, B:19:0x00fc, B:26:0x0048, B:28:0x004e, B:30:0x0054, B:32:0x005d, B:34:0x0069, B:36:0x0071, B:39:0x00bb, B:42:0x00d0, B:47:0x0080, B:48:0x0089, B:50:0x008f, B:53:0x00ab, B:58:0x00af), top: B:9:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x041a A[Catch: Exception -> 0x046b, TryCatch #1 {Exception -> 0x046b, blocks: (B:214:0x0396, B:215:0x040b, B:217:0x041a, B:220:0x03c7, B:222:0x03cd, B:224:0x03e1, B:227:0x03e9, B:235:0x0421, B:236:0x042f, B:238:0x0435, B:241:0x0449, B:246:0x044d, B:249:0x0466, B:253:0x0461, B:257:0x03a3, B:259:0x03ab, B:260:0x03b2), top: B:210:0x0384 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03cd A[Catch: Exception -> 0x046b, TryCatch #1 {Exception -> 0x046b, blocks: (B:214:0x0396, B:215:0x040b, B:217:0x041a, B:220:0x03c7, B:222:0x03cd, B:224:0x03e1, B:227:0x03e9, B:235:0x0421, B:236:0x042f, B:238:0x0435, B:241:0x0449, B:246:0x044d, B:249:0x0466, B:253:0x0461, B:257:0x03a3, B:259:0x03ab, B:260:0x03b2), top: B:210:0x0384 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0435 A[Catch: Exception -> 0x046b, TryCatch #1 {Exception -> 0x046b, blocks: (B:214:0x0396, B:215:0x040b, B:217:0x041a, B:220:0x03c7, B:222:0x03cd, B:224:0x03e1, B:227:0x03e9, B:235:0x0421, B:236:0x042f, B:238:0x0435, B:241:0x0449, B:246:0x044d, B:249:0x0466, B:253:0x0461, B:257:0x03a3, B:259:0x03ab, B:260:0x03b2), top: B:210:0x0384 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0461 A[Catch: Exception -> 0x046b, TryCatch #1 {Exception -> 0x046b, blocks: (B:214:0x0396, B:215:0x040b, B:217:0x041a, B:220:0x03c7, B:222:0x03cd, B:224:0x03e1, B:227:0x03e9, B:235:0x0421, B:236:0x042f, B:238:0x0435, B:241:0x0449, B:246:0x044d, B:249:0x0466, B:253:0x0461, B:257:0x03a3, B:259:0x03ab, B:260:0x03b2), top: B:210:0x0384 }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0193 A[Catch: Exception -> 0x01e5, TryCatch #5 {Exception -> 0x01e5, blocks: (B:75:0x013d, B:76:0x018d, B:78:0x0193, B:80:0x0199, B:83:0x019f, B:84:0x01b4, B:86:0x01ba, B:88:0x01d8, B:90:0x01de, B:91:0x01e0, B:98:0x0149, B:101:0x0160, B:105:0x0152, B:107:0x0158), top: B:72:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0199 A[Catch: Exception -> 0x01e5, TryCatch #5 {Exception -> 0x01e5, blocks: (B:75:0x013d, B:76:0x018d, B:78:0x0193, B:80:0x0199, B:83:0x019f, B:84:0x01b4, B:86:0x01ba, B:88:0x01d8, B:90:0x01de, B:91:0x01e0, B:98:0x0149, B:101:0x0160, B:105:0x0152, B:107:0x0158), top: B:72:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x019f A[Catch: Exception -> 0x01e5, TryCatch #5 {Exception -> 0x01e5, blocks: (B:75:0x013d, B:76:0x018d, B:78:0x0193, B:80:0x0199, B:83:0x019f, B:84:0x01b4, B:86:0x01ba, B:88:0x01d8, B:90:0x01de, B:91:0x01e0, B:98:0x0149, B:101:0x0160, B:105:0x0152, B:107:0x0158), top: B:72:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0146  */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:198:0x0404 -> B:184:0x040b). Please report as a decompilation issue!!! */
    @Override // androidx.paging.PagingSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object load(androidx.paging.PagingSource.LoadParams r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 1150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.timeline.TimelinePagingSource.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public TimelinePagingSource(List list) {
        this.$r8$classId = 0;
        this.sources = list;
    }

    public /* synthetic */ TimelinePagingSource(ViewModel viewModel, int i) {
        this.$r8$classId = i;
        this.sources = viewModel;
    }

    public TimelinePagingSource(String str) {
        this.$r8$classId = 1;
        str.getClass();
        this.sources = str;
    }
}
