package org.wikipedia.readinglist;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.ViewUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lorg/wikipedia/readinglist/ReadingListHeaderView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/readinglist/database/ReadingList;", "readingList", "", "setReadingList", "(Lorg/wikipedia/readinglist/database/ReadingList;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListHeaderView extends FrameLayout {
    public final MultipartBody.Builder binding;
    public final List imageViews;
    public ReadingList readingList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_reading_list_header, this);
        int i = R.id.reading_list_header_empty_image;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.reading_list_header_empty_image);
        if (imageView != null) {
            i = R.id.reading_list_header_image_0;
            FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_0);
            if (faceAndColorDetectImageView != null) {
                i = R.id.reading_list_header_image_1;
                FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_1);
                if (faceAndColorDetectImageView2 != null) {
                    i = R.id.reading_list_header_image_2;
                    FaceAndColorDetectImageView faceAndColorDetectImageView3 = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_2);
                    if (faceAndColorDetectImageView3 != null) {
                        i = R.id.reading_list_header_image_3;
                        FaceAndColorDetectImageView faceAndColorDetectImageView4 = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_3);
                        if (faceAndColorDetectImageView4 != null) {
                            i = R.id.reading_list_header_image_4;
                            FaceAndColorDetectImageView faceAndColorDetectImageView5 = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_4);
                            if (faceAndColorDetectImageView5 != null) {
                                i = R.id.reading_list_header_image_5;
                                FaceAndColorDetectImageView faceAndColorDetectImageView6 = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.reading_list_header_image_5);
                                if (faceAndColorDetectImageView6 != null) {
                                    i = R.id.reading_list_header_image_container;
                                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_header_image_container);
                                    if (linearLayout != null) {
                                        i = R.id.reading_list_header_image_gradient;
                                        View findChildViewById = Room.findChildViewById(this, R.id.reading_list_header_image_gradient);
                                        if (findChildViewById != null) {
                                            MultipartBody.Builder builder = new MultipartBody.Builder();
                                            builder.boundary = imageView;
                                            builder.type = linearLayout;
                                            builder.parts = findChildViewById;
                                            this.binding = builder;
                                            this.imageViews = Room.listOf((Object[]) new FaceAndColorDetectImageView[]{faceAndColorDetectImageView, faceAndColorDetectImageView2, faceAndColorDetectImageView3, faceAndColorDetectImageView4, faceAndColorDetectImageView5, faceAndColorDetectImageView6});
                                            if (isInEditMode()) {
                                                return;
                                            }
                                            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                                            TypedValue typedValue = new TypedValue();
                                            typedValue = context.getTheme().resolveAttribute(R.attr.overlay_color, typedValue, true) ? typedValue : null;
                                            if (typedValue == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969818");
                                                throw null;
                                            }
                                            findChildViewById.setBackground(Jsoup.getPowerGradient(typedValue.data, 48));
                                            clearThumbnails();
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final void clearThumbnails() {
        for (FaceAndColorDetectImageView faceAndColorDetectImageView : this.imageViews) {
            faceAndColorDetectImageView.getClass();
            ViewUtil.loadImage$default(faceAndColorDetectImageView, null, null, 28);
        }
    }

    public final void setReadingList(ReadingList readingList) {
        readingList.getClass();
        this.readingList = readingList;
        boolean isEmpty = readingList.pages.isEmpty();
        MultipartBody.Builder builder = this.binding;
        if (isEmpty) {
            ((LinearLayout) builder.type).setVisibility(8);
            ((ImageView) builder.boundary).setVisibility(0);
            return;
        }
        ((LinearLayout) builder.type).setVisibility(0);
        ((ImageView) builder.boundary).setVisibility(8);
        ReadingList readingList2 = this.readingList;
        if (readingList2 != null) {
            clearThumbnails();
            ArrayList arrayList = readingList2.pages;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = ((ReadingListPage) it.next()).thumbUrl;
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (((String) next).length() != 0) {
                    arrayList3.add(next);
                }
            }
            Iterator it3 = CollectionsKt.zip(this.imageViews, arrayList3).iterator();
            while (it3.hasNext()) {
                Pair pair = (Pair) it3.next();
                Object obj = pair.first;
                obj.getClass();
                ViewUtil.loadImage$default((FaceAndColorDetectImageView) obj, (String) pair.second, null, 28);
            }
        }
    }
}
