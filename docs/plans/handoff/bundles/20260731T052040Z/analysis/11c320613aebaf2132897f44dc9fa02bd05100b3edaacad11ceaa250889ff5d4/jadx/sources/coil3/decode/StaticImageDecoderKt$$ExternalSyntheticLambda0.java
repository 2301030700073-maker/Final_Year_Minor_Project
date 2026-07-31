package coil3.decode;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.upstream.DataSourceBitmapLoader;
import java.util.concurrent.Callable;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.fragments.list.videos.RelatedItemsFragment;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.util.StreamItemAdapter;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StaticImageDecoderKt$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StaticImageDecoderKt$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bitmap decode;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return (AssetFileDescriptor) obj;
            case 1:
                decode = DataSourceBitmapLoader.decode((byte[]) obj);
                return decode;
            case 2:
                RouterActivity routerActivity = (RouterActivity) obj;
                String str = routerActivity.currentUrl;
                return SQLite.getIntentByLink(routerActivity, Utility.getServiceByUrl(str), str);
            case 3:
                return ((RelatedItemsFragment) obj).relatedItemsInfo;
            case 4:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((SearchHistoryDAO_Impl) obj).__db, false, true, new ZipFilesKt$$ExternalSyntheticLambda3(26))).intValue());
            case 5:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((StreamStateDAO_Impl) obj).__db, false, true, new FeedFragment$$ExternalSyntheticLambda10(5))).intValue());
            case 6:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((StreamHistoryDAO_Impl) obj).__db, false, true, new ZipFilesKt$$ExternalSyntheticLambda3(29))).intValue());
            case 7:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((StreamDAO_Impl) obj).__db, false, true, new FeedFragment$$ExternalSyntheticLambda10(4))).intValue());
            default:
                return StreamItemAdapter.StreamInfoWrapper.$r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0((StreamItemAdapter.StreamInfoWrapper) obj);
        }
    }
}
