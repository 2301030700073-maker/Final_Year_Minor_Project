package c.a.a.N0;

import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ContentWriter;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public final /* synthetic */ class L implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ModelWriter f1489a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ItemInfo f1490b;

    public /* synthetic */ L(ModelWriter modelWriter, ItemInfo itemInfo) {
        this.f1489a = modelWriter;
        this.f1490b = itemInfo;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        ModelWriter modelWriter = this.f1489a;
        ItemInfo itemInfo = this.f1490b;
        ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
        contentWriter.mValues.put("container", Integer.valueOf(itemInfo.container));
        contentWriter.mValues.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentWriter.mValues.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentWriter.mValues.put("rank", Integer.valueOf(itemInfo.rank));
        contentWriter.mValues.put("spanX", Integer.valueOf(itemInfo.spanX));
        contentWriter.mValues.put("spanY", Integer.valueOf(itemInfo.spanY));
        contentWriter.mValues.put("screen", Integer.valueOf(itemInfo.screenId));
        return contentWriter;
    }
}
