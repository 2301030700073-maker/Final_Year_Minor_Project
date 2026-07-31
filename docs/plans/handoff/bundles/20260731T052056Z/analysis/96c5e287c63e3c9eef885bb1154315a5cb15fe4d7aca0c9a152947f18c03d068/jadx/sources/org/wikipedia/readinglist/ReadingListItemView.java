package org.wikipedia.readinglist;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.text.RegexKt;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import org.wikipedia.views.ViewUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListItemView extends ConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityPageBinding binding;
    public Callback callback;
    public final List imageViews;
    public ReadingList readingList;
    public View.OnClickListener saveClickListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onAbout();

        void onChecked(ReadingList readingList);

        void onClick(ReadingList readingList);

        void onCustomize();

        void onDelete(ReadingList readingList);

        void onNotification();

        void onRemoveAllOffline(ReadingList readingList);

        void onRename(ReadingList readingList);

        void onSaveAllOffline(ReadingList readingList);

        void onSaveToList(ReadingList readingList);

        void onSelectList(ReadingList readingList);

        void onShare(ReadingList readingList);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Description {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Description[] $VALUES;
        public static final Description DETAIL;
        public static final Description SUMMARY;

        static {
            Description description = new Description("DETAIL", 0);
            DETAIL = description;
            Description description2 = new Description("SUMMARY", 1);
            SUMMARY = description2;
            Description[] descriptionArr = {description, description2};
            $VALUES = descriptionArr;
            $ENTRIES = new EnumEntriesList(descriptionArr);
        }

        public static Description valueOf(String str) {
            return (Description) Enum.valueOf(Description.class, str);
        }

        public static Description[] values() {
            return (Description[]) $VALUES.clone();
        }
    }

    public ReadingListItemView(Context context, int i) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.item_reading_list, this);
        int i2 = R.id.default_list_empty_image;
        ShapeableImageView shapeableImageView = (ShapeableImageView) Room.findChildViewById(this, R.id.default_list_empty_image);
        if (shapeableImageView != null) {
            i2 = R.id.endContainer;
            if (((FrameLayout) Room.findChildViewById(this, R.id.endContainer)) != null) {
                i2 = R.id.item_description;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.item_description);
                if (textView != null) {
                    i2 = R.id.item_image_1;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) Room.findChildViewById(this, R.id.item_image_1);
                    if (shapeableImageView2 != null) {
                        i2 = R.id.item_image_2;
                        ShapeableImageView shapeableImageView3 = (ShapeableImageView) Room.findChildViewById(this, R.id.item_image_2);
                        if (shapeableImageView3 != null) {
                            i2 = R.id.item_image_3;
                            ShapeableImageView shapeableImageView4 = (ShapeableImageView) Room.findChildViewById(this, R.id.item_image_3);
                            if (shapeableImageView4 != null) {
                                i2 = R.id.item_image_4;
                                ShapeableImageView shapeableImageView5 = (ShapeableImageView) Room.findChildViewById(this, R.id.item_image_4);
                                if (shapeableImageView5 != null) {
                                    i2 = R.id.item_notification_button;
                                    ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.item_notification_button);
                                    if (imageView != null) {
                                        i2 = R.id.item_overflow_menu;
                                        ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.item_overflow_menu);
                                        if (imageView2 != null) {
                                            i2 = R.id.item_preview_save_button;
                                            MaterialButton materialButton = (MaterialButton) Room.findChildViewById(this, R.id.item_preview_save_button);
                                            if (materialButton != null) {
                                                i2 = R.id.item_reading_list_statistical_description;
                                                TextView textView2 = (TextView) Room.findChildViewById(this, R.id.item_reading_list_statistical_description);
                                                if (textView2 != null) {
                                                    i2 = R.id.item_recommended_list_info_container;
                                                    FlexboxLayout flexboxLayout = (FlexboxLayout) Room.findChildViewById(this, R.id.item_recommended_list_info_container);
                                                    if (flexboxLayout != null) {
                                                        i2 = R.id.item_recommended_list_made_for;
                                                        TextView textView3 = (TextView) Room.findChildViewById(this, R.id.item_recommended_list_made_for);
                                                        if (textView3 != null) {
                                                            i2 = R.id.item_recommended_list_number_of_articles;
                                                            TextView textView4 = (TextView) Room.findChildViewById(this, R.id.item_recommended_list_number_of_articles);
                                                            if (textView4 != null) {
                                                                i2 = R.id.item_save_to_list_button;
                                                                ImageView imageView3 = (ImageView) Room.findChildViewById(this, R.id.item_save_to_list_button);
                                                                if (imageView3 != null) {
                                                                    i2 = R.id.item_select_checkbox;
                                                                    CheckBox checkBox = (CheckBox) Room.findChildViewById(this, R.id.item_select_checkbox);
                                                                    if (checkBox != null) {
                                                                        i2 = R.id.item_share_button;
                                                                        ImageView imageView4 = (ImageView) Room.findChildViewById(this, R.id.item_share_button);
                                                                        if (imageView4 != null) {
                                                                            i2 = R.id.item_title;
                                                                            TextView textView5 = (TextView) Room.findChildViewById(this, R.id.item_title);
                                                                            if (textView5 != null) {
                                                                                i2 = R.id.item_title_container;
                                                                                if (((FlexboxLayout) Room.findChildViewById(this, R.id.item_title_container)) != null) {
                                                                                    i2 = R.id.item_title_indicator;
                                                                                    TextView textView6 = (TextView) Room.findChildViewById(this, R.id.item_title_indicator);
                                                                                    if (textView6 != null) {
                                                                                        this.binding = new ActivityPageBinding(this, shapeableImageView, textView, shapeableImageView2, shapeableImageView3, shapeableImageView4, shapeableImageView5, imageView, imageView2, materialButton, textView2, flexboxLayout, textView3, textView4, imageView3, checkBox, imageView4, textView5, textView6);
                                                                                        final int i3 = 4;
                                                                                        final int i4 = 0;
                                                                                        final int i5 = 1;
                                                                                        final int i6 = 2;
                                                                                        final int i7 = 3;
                                                                                        this.imageViews = Room.listOf((Object[]) new ShapeableImageView[]{shapeableImageView2, shapeableImageView3, shapeableImageView4, shapeableImageView5});
                                                                                        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                                                                        setPadding(0, Okio__OkioKt.roundedDpToPx(16.0f), 0, Okio__OkioKt.roundedDpToPx(16.0f));
                                                                                        setClipToPadding(false);
                                                                                        TypedValue typedValue = new TypedValue();
                                                                                        typedValue = context.getTheme().resolveAttribute(android.R.attr.selectableItemBackground, typedValue, true) ? typedValue : null;
                                                                                        if (typedValue == null) {
                                                                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16843534");
                                                                                            throw null;
                                                                                        }
                                                                                        setBackgroundResource(typedValue.resourceId);
                                                                                        setClickable(true);
                                                                                        setFocusable(true);
                                                                                        clearThumbnails();
                                                                                        new View[]{this}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                                                                                        setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i8 = i4;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i8) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        final int i8 = 5;
                                                                                        setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(i8, this));
                                                                                        imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i5;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        checkBox.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i6;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        imageView4.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i7;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i3;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        imageView3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i8;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        final int i9 = 6;
                                                                                        imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemView$$ExternalSyntheticLambda0
                                                                                            public final /* synthetic */ ReadingListItemView f$0;

                                                                                            {
                                                                                                this.f$0 = this;
                                                                                            }

                                                                                            @Override // android.view.View.OnClickListener
                                                                                            public final void onClick(View view) {
                                                                                                ReadingListItemView.Callback callback;
                                                                                                ReadingListItemView.Callback callback2;
                                                                                                ReadingListItemView.Callback callback3;
                                                                                                ReadingListItemView.Callback callback4;
                                                                                                int i82 = i9;
                                                                                                ReadingListItemView readingListItemView = this.f$0;
                                                                                                switch (i82) {
                                                                                                    case 0:
                                                                                                        ReadingList readingList = readingListItemView.readingList;
                                                                                                        if (readingList != null && (callback = readingListItemView.callback) != null) {
                                                                                                            callback.onClick(readingList);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        ReadingListItemView readingListItemView2 = this.f$0;
                                                                                                        ReadingList readingList2 = readingListItemView2.readingList;
                                                                                                        if (readingList2 != null) {
                                                                                                            ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                                                                                                            view.getClass();
                                                                                                            readingListItemView2.showOverflowMenu(false, readingList2, readingListMode, view, 7);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        ReadingList readingList3 = readingListItemView.readingList;
                                                                                                        if (readingList3 != null && (callback2 = readingListItemView.callback) != null) {
                                                                                                            callback2.onChecked(readingList3);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 3:
                                                                                                        ReadingList readingList4 = readingListItemView.readingList;
                                                                                                        if (readingList4 != null && (callback3 = readingListItemView.callback) != null) {
                                                                                                            callback3.onShare(readingList4);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 4:
                                                                                                        View.OnClickListener onClickListener = readingListItemView.saveClickListener;
                                                                                                        if (onClickListener != null) {
                                                                                                            onClickListener.onClick(view);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 5:
                                                                                                        ReadingList readingList5 = readingListItemView.readingList;
                                                                                                        if (readingList5 != null && (callback4 = readingListItemView.callback) != null) {
                                                                                                            callback4.onSaveToList(readingList5);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        ReadingListItemView.Callback callback5 = readingListItemView.callback;
                                                                                                        if (callback5 != null) {
                                                                                                            callback5.onNotification();
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                        View[] viewArr = {imageView4, imageView2, imageView, imageView3};
                                                                                        while (i4 < 4) {
                                                                                            View view = viewArr[i4];
                                                                                            RegexKt.setTooltipText(view, view.getContentDescription());
                                                                                            i4++;
                                                                                        }
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
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i2)));
        throw null;
    }

    public final void clearThumbnails() {
        for (ShapeableImageView shapeableImageView : this.imageViews) {
            shapeableImageView.getClass();
            ViewUtil.loadImage$default(shapeableImageView, null, null, 28);
        }
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final TextView getListTitle() {
        return (TextView) this.binding.tocList;
    }

    public final View.OnClickListener getSaveClickListener() {
        return this.saveClickListener;
    }

    public final ImageView getShareButton() {
        return (ImageView) this.binding.sidePanelContainer;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setMode(ReadingListMode readingListMode) {
        ArrayList arrayList;
        readingListMode.getClass();
        ActivityPageBinding activityPageBinding = this.binding;
        MaterialButton materialButton = (MaterialButton) activityPageBinding.pageProgressBar;
        ImageView imageView = (ImageView) activityPageBinding.pageToolbarButtonShowOverflowMenu;
        ImageView imageView2 = (ImageView) activityPageBinding.pageFragment;
        ReadingListMode readingListMode2 = ReadingListMode.PREVIEW;
        materialButton.setVisibility(readingListMode == readingListMode2 ? 0 : 8);
        imageView2.setVisibility(readingListMode != readingListMode2 ? 0 : 8);
        TextView textView = (TextView) activityPageBinding.pageScrollerButton;
        ReadingListMode readingListMode3 = ReadingListMode.DEFAULT;
        textView.setVisibility(readingListMode == readingListMode3 ? 0 : 8);
        FlexboxLayout flexboxLayout = (FlexboxLayout) activityPageBinding.pageToolbar;
        ReadingListMode readingListMode4 = ReadingListMode.RECOMMENDED;
        flexboxLayout.setVisibility(readingListMode == readingListMode4 ? 0 : 8);
        imageView.setVisibility(readingListMode == readingListMode4 ? 0 : 8);
        ((ImageView) activityPageBinding.pageToolbarButtonTabs).setVisibility(readingListMode == readingListMode4 ? 0 : 8);
        ((ImageView) activityPageBinding.sidePanelContainer).setVisibility(readingListMode == readingListMode3 ? 0 : 8);
        if (readingListMode == readingListMode4) {
            String string = Headers.Companion.isLoggedIn() ? getContext().getString(R.string.recommended_reading_list_page_subtitle_made_for, Animation.CC.m("<b>", Headers.Companion.getUserName(), "</b>")) : getContext().getString(R.string.recommended_reading_list_page_logged_out_subtitle_made_for_you);
            string.getClass();
            ReadingList readingList = this.readingList;
            int size = (readingList == null || (arrayList = readingList.pages) == null) ? 0 : arrayList.size();
            TextView textView2 = (TextView) activityPageBinding.pageToolbarButtonNotifications;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView2.setText(StringUtil.fromHtml(string));
            ((TextView) activityPageBinding.pageToolbarButtonSearch).setText(getContext().getResources().getQuantityString(R.plurals.recommended_reading_list_page_subtitle_articles, size, Integer.valueOf(size)));
            Prefs prefs = Prefs.INSTANCE;
            imageView.setImageResource(Prefs.isRecommendedReadingListNotificationEnabled() ? R.drawable.ic_notifications_active : R.drawable.outline_notifications_off_24);
            imageView2.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(21, this, readingListMode));
        }
        setOnLongClickListener(new ReadingListItemView$$ExternalSyntheticLambda9());
    }

    public final void setOverflowViewVisibility(boolean z) {
        ((ImageView) this.binding.pageFragment).setVisibility(z ? 0 : 8);
    }

    public final void setReadingList(ReadingList readingList, Description description, boolean z, boolean z2) {
        String quantityString;
        ReadingList readingList2;
        readingList.getClass();
        ArrayList arrayList = readingList.pages;
        description.getClass();
        this.readingList = readingList;
        boolean z3 = description == Description.DETAIL;
        ActivityPageBinding activityPageBinding = this.binding;
        TextView textView = (TextView) activityPageBinding.navigationDrawer;
        ShapeableImageView shapeableImageView = (ShapeableImageView) activityPageBinding.containerWithNavTrigger;
        textView.setMaxLines(z3 ? Integer.MAX_VALUE : getResources().getInteger(R.integer.reading_list_description_summary_view_max_lines));
        if (z3) {
            float statsTextListSize = statsTextListSize(readingList);
            if (statsTextListSize > RecyclerView.DECELERATION_RATE) {
                quantityString = getResources().getQuantityString(R.plurals.format_reading_list_statistical_detail, arrayList.size(), Integer.valueOf(readingList.getNumPagesOffline()), Integer.valueOf(arrayList.size()), Float.valueOf(statsTextListSize));
                quantityString.getClass();
            } else {
                quantityString = getResources().getQuantityString(R.plurals.format_reading_list_statistical_detail_without_size, arrayList.size(), Integer.valueOf(readingList.getNumPagesOffline()), Integer.valueOf(arrayList.size()));
                quantityString.getClass();
            }
        } else if (statsTextListSize(readingList) > RecyclerView.DECELERATION_RATE) {
            quantityString = getResources().getQuantityString(R.plurals.format_reading_list_statistical_summary, arrayList.size(), Integer.valueOf(arrayList.size()), Float.valueOf(statsTextListSize(readingList)));
            quantityString.getClass();
        } else {
            quantityString = getResources().getQuantityString(R.plurals.format_reading_list_statistical_summary_without_size, arrayList.size(), Integer.valueOf(arrayList.size()));
            quantityString.getClass();
        }
        ((TextView) activityPageBinding.pageScrollerButton).setText(quantityString);
        ((TextView) activityPageBinding.wikiArticleCardView).setVisibility(z2 ? 0 : 8);
        ReadingList readingList3 = this.readingList;
        if (readingList3 != null) {
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) activityPageBinding.rootView;
            CheckBox checkBox = (CheckBox) activityPageBinding.pageToolbarContainer;
            TextView textView2 = (TextView) activityPageBinding.navigationDrawer;
            shapeableImageView2.setVisibility((readingList3.isDefault() && readingList3.pages.isEmpty() && shapeableImageView.getVisibility() == 0) ? 0 : 8);
            ((TextView) activityPageBinding.tocList).setText(readingList3.getTitle());
            if (readingList3.isDefault()) {
                textView2.setText(getContext().getString(R.string.default_reading_list_description));
                textView2.setVisibility(0);
            } else {
                textView2.setText(readingList3.description);
                String str = readingList3.description;
                textView2.setVisibility((str == null || str.length() == 0) ? 8 : 0);
            }
            checkBox.setVisibility(z ? 0 : 8);
            checkBox.setChecked(readingList3.selected);
        }
        if (shapeableImageView.getVisibility() != 0 || (readingList2 = this.readingList) == null) {
            return;
        }
        clearThumbnails();
        ArrayList arrayList2 = readingList2.pages;
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str2 = ((ReadingListPage) it.next()).thumbUrl;
            if (str2 != null) {
                arrayList3.add(str2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (((String) next).length() != 0) {
                arrayList4.add(next);
            }
        }
        Iterator it3 = CollectionsKt.zip(this.imageViews, arrayList4).iterator();
        while (it3.hasNext()) {
            Pair pair = (Pair) it3.next();
            Object obj = pair.first;
            obj.getClass();
            ViewUtil.loadImage$default((ShapeableImageView) obj, (String) pair.second, null, 28);
        }
    }

    public final void setSaveClickListener(View.OnClickListener onClickListener) {
        this.saveClickListener = onClickListener;
    }

    public final void setSearchQuery(String str) {
        StringUtil stringUtil = StringUtil.INSTANCE;
        TextView textView = (TextView) this.binding.tocList;
        StringUtil.boldenKeywordText(textView, textView.getText().toString(), str);
    }

    public final void setThumbnailVisible(boolean z) {
        Iterator it = this.imageViews.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ShapeableImageView shapeableImageView = (ShapeableImageView) it.next();
            shapeableImageView.getClass();
            if (z) {
                r2 = 0;
            }
            shapeableImageView.setVisibility(r2);
        }
        ((ShapeableImageView) this.binding.rootView).setVisibility(z ? 0 : 8);
    }

    public final void setTitleTextAppearance(int i) {
        ((TextView) this.binding.tocList).setTextAppearance(i);
    }

    public final void showOverflowMenu(boolean z, ReadingList readingList, ReadingListMode readingListMode, View view, int i) {
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            MenuBuilder menuBuilder = new MenuBuilder(activity);
            if (z) {
                activity.getMenuInflater().inflate(R.menu.menu_reading_list_item, menuBuilder);
                if (readingList.isDefault()) {
                    MenuItem findItem = menuBuilder.findItem(R.id.menu_reading_list_rename);
                    if (findItem != null) {
                        findItem.setVisible(false);
                    }
                    MenuItem findItem2 = menuBuilder.findItem(R.id.menu_reading_list_delete);
                    if (findItem2 != null) {
                        findItem2.setVisible(false);
                    }
                }
                MenuItem findItem3 = menuBuilder.findItem(R.id.menu_reading_list_select);
                if (findItem3 != null) {
                    findItem3.setTitle(getContext().getString(readingList.selected ? R.string.reading_list_menu_unselect : R.string.reading_list_menu_select));
                }
            } else if (readingListMode == ReadingListMode.RECOMMENDED) {
                activity.getMenuInflater().inflate(R.menu.menu_recommended_reading_list_item, menuBuilder);
            } else {
                activity.getMenuInflater().inflate(R.menu.menu_reading_list_item, menuBuilder);
                menuBuilder.findItem(R.id.menu_reading_list_select).setVisible(false);
                if (readingList.isDefault()) {
                    menuBuilder.findItem(R.id.menu_reading_list_rename).setVisible(false);
                    menuBuilder.findItem(R.id.menu_reading_list_delete).setVisible(false);
                }
                menuBuilder.findItem(R.id.menu_reading_list_share).setVisible(false);
            }
            menuBuilder.mCallback = new OkHttpCall.AnonymousClass1(21, (Object) this, (Object) readingList, false);
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(activity, menuBuilder, view);
            menuPopupHelper.setForceShowIcon(true);
            menuPopupHelper.mDropDownGravity = i;
            menuPopupHelper.show();
        }
    }

    public final float statsTextListSize(ReadingList readingList) {
        Iterator it = readingList.pages.iterator();
        long j = 0;
        while (it.hasNext()) {
            ReadingListPage readingListPage = (ReadingListPage) it.next();
            j += readingListPage.offline ? readingListPage.sizeBytes : 0L;
        }
        float f = j;
        int integer = getResources().getInteger(R.integer.reading_list_item_size_bytes_per_unit);
        if (1 >= integer) {
            integer = 1;
        }
        return f / integer;
    }
}
