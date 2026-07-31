package org.wikipedia.views;

import android.content.Context;
import android.util.TypedValue;
import android.view.ActionProvider;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.room.Room;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.views.FindInPageActionProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FindInPageActionProvider extends ActionProvider {
    public Request.Builder _binding;
    public final Context context;
    public boolean enableLastOccurrenceSearchFlag;
    public boolean isFirstOccurrence;
    public boolean isLastOccurrence;
    public boolean lastOccurrenceSearchFlag;
    public FindInPageListener listener;
    public final AvPlayer searchQueryListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface FindInPageListener {
        void onFindNextClicked();

        void onFindNextLongClicked();

        void onFindPrevClicked();

        void onFindPrevLongClicked();

        void onSearchTextChanged(String str);
    }

    public FindInPageActionProvider(Context context) {
        super(context);
        this.context = context;
        this.searchQueryListener = new AvPlayer(26, this);
    }

    @Override // android.view.ActionProvider
    public final View onCreateActionView() {
        Context context = this.context;
        final int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.group_find_in_page, (ViewGroup) null, false);
        LinearLayout linearLayout = (LinearLayout) inflate;
        int i2 = R.id.find_in_page_input;
        CabSearchView cabSearchView = (CabSearchView) Room.findChildViewById(inflate, R.id.find_in_page_input);
        if (cabSearchView != null) {
            i2 = R.id.find_in_page_match;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.find_in_page_match);
            if (textView != null) {
                i2 = R.id.find_in_page_next;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.find_in_page_next);
                if (imageView != null) {
                    i2 = R.id.find_in_page_prev;
                    ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.find_in_page_prev);
                    if (imageView2 != null) {
                        this._binding = new Request.Builder(linearLayout, cabSearchView, textView, imageView, imageView2);
                        setFindInPageChevronsEnabled(false);
                        Request.Builder builder = this._binding;
                        builder.getClass();
                        ((CabSearchView) builder.method).setQueryHint(context.getString(R.string.menu_page_find_in_page));
                        Request.Builder builder2 = this._binding;
                        builder2.getClass();
                        final int i3 = 1;
                        ((CabSearchView) builder2.method).setFocusable(true);
                        Request.Builder builder3 = this._binding;
                        builder3.getClass();
                        ((CabSearchView) builder3.method).setOnQueryTextListener(this.searchQueryListener);
                        Request.Builder builder4 = this._binding;
                        builder4.getClass();
                        ((CabSearchView) builder4.method).setIconified(false);
                        Request.Builder builder5 = this._binding;
                        builder5.getClass();
                        ((CabSearchView) builder5.method).setMaxWidth(Integer.MAX_VALUE);
                        Request.Builder builder6 = this._binding;
                        builder6.getClass();
                        ((CabSearchView) builder6.method).setInputType(1);
                        Request.Builder builder7 = this._binding;
                        builder7.getClass();
                        ((CabSearchView) builder7.method).setSubmitButtonEnabled(false);
                        Request.Builder builder8 = this._binding;
                        builder8.getClass();
                        ((CabSearchView) builder8.method).findViewById(R.id.search_plate).setBackgroundColor(0);
                        Request.Builder builder9 = this._binding;
                        builder9.getClass();
                        ImageView imageView3 = (ImageView) ((CabSearchView) builder9.method).findViewById(R.id.search_close_btn);
                        imageView3.setEnabled(false);
                        imageView3.setImageDrawable(null);
                        Request.Builder builder10 = this._binding;
                        builder10.getClass();
                        ((ImageView) builder10.tags).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.FindInPageActionProvider$$ExternalSyntheticLambda2
                            public final /* synthetic */ FindInPageActionProvider f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i4 = i;
                                FindInPageActionProvider findInPageActionProvider = this.f$0;
                                switch (i4) {
                                    case 0:
                                        view.getClass();
                                        Object systemService = view.getContext().getSystemService("input_method");
                                        systemService.getClass();
                                        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                        FindInPageActionProvider.FindInPageListener findInPageListener = findInPageActionProvider.listener;
                                        if (findInPageListener != null) {
                                            findInPageListener.onFindPrevClicked();
                                            break;
                                        }
                                        break;
                                    default:
                                        view.getClass();
                                        Object systemService2 = view.getContext().getSystemService("input_method");
                                        systemService2.getClass();
                                        ((InputMethodManager) systemService2).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                        FindInPageActionProvider.FindInPageListener findInPageListener2 = findInPageActionProvider.listener;
                                        if (findInPageListener2 != null) {
                                            findInPageListener2.onFindNextClicked();
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        Request.Builder builder11 = this._binding;
                        builder11.getClass();
                        ((ImageView) builder11.body).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.FindInPageActionProvider$$ExternalSyntheticLambda2
                            public final /* synthetic */ FindInPageActionProvider f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i4 = i3;
                                FindInPageActionProvider findInPageActionProvider = this.f$0;
                                switch (i4) {
                                    case 0:
                                        view.getClass();
                                        Object systemService = view.getContext().getSystemService("input_method");
                                        systemService.getClass();
                                        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                        FindInPageActionProvider.FindInPageListener findInPageListener = findInPageActionProvider.listener;
                                        if (findInPageListener != null) {
                                            findInPageListener.onFindPrevClicked();
                                            break;
                                        }
                                        break;
                                    default:
                                        view.getClass();
                                        Object systemService2 = view.getContext().getSystemService("input_method");
                                        systemService2.getClass();
                                        ((InputMethodManager) systemService2).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                        FindInPageActionProvider.FindInPageListener findInPageListener2 = findInPageActionProvider.listener;
                                        if (findInPageListener2 != null) {
                                            findInPageListener2.onFindNextClicked();
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        Request.Builder builder12 = this._binding;
                        builder12.getClass();
                        ((ImageView) builder12.tags).setOnLongClickListener(new View.OnLongClickListener(this) { // from class: org.wikipedia.views.FindInPageActionProvider$$ExternalSyntheticLambda0
                            public final /* synthetic */ FindInPageActionProvider f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnLongClickListener
                            public final boolean onLongClick(View view) {
                                int i4 = i;
                                FindInPageActionProvider findInPageActionProvider = this.f$0;
                                switch (i4) {
                                    case 0:
                                        if (!findInPageActionProvider.isFirstOccurrence) {
                                            view.getClass();
                                            Object systemService = view.getContext().getSystemService("input_method");
                                            systemService.getClass();
                                            ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                            FindInPageActionProvider.FindInPageListener findInPageListener = findInPageActionProvider.listener;
                                            if (findInPageListener != null) {
                                                findInPageListener.onFindPrevLongClicked();
                                                break;
                                            }
                                        } else {
                                            Context context2 = findInPageActionProvider.context;
                                            Toast.makeText(context2, context2.getString(R.string.find_first_occurence), 0).show();
                                            break;
                                        }
                                        break;
                                    default:
                                        if (!findInPageActionProvider.isLastOccurrence) {
                                            view.getClass();
                                            Object systemService2 = view.getContext().getSystemService("input_method");
                                            systemService2.getClass();
                                            ((InputMethodManager) systemService2).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                            FindInPageActionProvider.FindInPageListener findInPageListener2 = findInPageActionProvider.listener;
                                            if (findInPageListener2 != null) {
                                                findInPageListener2.onFindNextLongClicked();
                                            }
                                            findInPageActionProvider.lastOccurrenceSearchFlag = true;
                                            break;
                                        } else {
                                            Context context3 = findInPageActionProvider.context;
                                            Toast.makeText(context3, context3.getString(R.string.find_last_occurence), 0).show();
                                            break;
                                        }
                                }
                                return true;
                            }
                        });
                        Request.Builder builder13 = this._binding;
                        builder13.getClass();
                        ((ImageView) builder13.body).setOnLongClickListener(new View.OnLongClickListener(this) { // from class: org.wikipedia.views.FindInPageActionProvider$$ExternalSyntheticLambda0
                            public final /* synthetic */ FindInPageActionProvider f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnLongClickListener
                            public final boolean onLongClick(View view) {
                                int i4 = i3;
                                FindInPageActionProvider findInPageActionProvider = this.f$0;
                                switch (i4) {
                                    case 0:
                                        if (!findInPageActionProvider.isFirstOccurrence) {
                                            view.getClass();
                                            Object systemService = view.getContext().getSystemService("input_method");
                                            systemService.getClass();
                                            ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                            FindInPageActionProvider.FindInPageListener findInPageListener = findInPageActionProvider.listener;
                                            if (findInPageListener != null) {
                                                findInPageListener.onFindPrevLongClicked();
                                                break;
                                            }
                                        } else {
                                            Context context2 = findInPageActionProvider.context;
                                            Toast.makeText(context2, context2.getString(R.string.find_first_occurence), 0).show();
                                            break;
                                        }
                                        break;
                                    default:
                                        if (!findInPageActionProvider.isLastOccurrence) {
                                            view.getClass();
                                            Object systemService2 = view.getContext().getSystemService("input_method");
                                            systemService2.getClass();
                                            ((InputMethodManager) systemService2).hideSoftInputFromWindow(view.getWindowToken(), 0);
                                            FindInPageActionProvider.FindInPageListener findInPageListener2 = findInPageActionProvider.listener;
                                            if (findInPageListener2 != null) {
                                                findInPageListener2.onFindNextLongClicked();
                                            }
                                            findInPageActionProvider.lastOccurrenceSearchFlag = true;
                                            break;
                                        } else {
                                            Context context3 = findInPageActionProvider.context;
                                            Toast.makeText(context3, context3.getString(R.string.find_last_occurence), 0).show();
                                            break;
                                        }
                                }
                                return true;
                            }
                        });
                        Request.Builder builder14 = this._binding;
                        builder14.getClass();
                        ImageView imageView4 = (ImageView) builder14.body;
                        Request.Builder builder15 = this._binding;
                        builder15.getClass();
                        View[] viewArr = {imageView4, (ImageView) builder15.tags};
                        while (i < 2) {
                            viewArr[i].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                            i++;
                        }
                        Request.Builder builder16 = this._binding;
                        builder16.getClass();
                        LinearLayout linearLayout2 = (LinearLayout) builder16.url;
                        linearLayout2.getClass();
                        return linearLayout2;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // android.view.ActionProvider
    public final boolean overridesItemVisibility() {
        return true;
    }

    public final void setFindInPageChevronsEnabled(boolean z) {
        Request.Builder builder = this._binding;
        builder.getClass();
        ((ImageView) builder.body).setEnabled(z);
        Request.Builder builder2 = this._binding;
        builder2.getClass();
        ((ImageView) builder2.tags).setEnabled(z);
        Request.Builder builder3 = this._binding;
        builder3.getClass();
        ((ImageView) builder3.body).setAlpha(z ? 1.0f : 0.5f);
        Request.Builder builder4 = this._binding;
        builder4.getClass();
        ((ImageView) builder4.tags).setAlpha(z ? 1.0f : 0.5f);
    }

    public final void setMatchesResults(int i, int i2) {
        TypedValue typedValue;
        Request.Builder builder = this._binding;
        Context context = this.context;
        if (i2 > 0) {
            builder.getClass();
            int i3 = i + 1;
            ((TextView) builder.headers).setText(context.getString(R.string.find_in_page_result, Integer.valueOf(i3), Integer.valueOf(i2)));
            Request.Builder builder2 = this._binding;
            builder2.getClass();
            TextView textView = (TextView) builder2.headers;
            TypedValue typedValue2 = new TypedValue();
            typedValue = context.getTheme().resolveAttribute(R.attr.secondary_color, typedValue2, true) ? typedValue2 : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
                return;
            }
            textView.setTextColor(typedValue.data);
            setFindInPageChevronsEnabled(true);
            this.isFirstOccurrence = i == 0;
            this.isLastOccurrence = i3 == i2;
        } else {
            builder.getClass();
            ((TextView) builder.headers).setText("0/0");
            Request.Builder builder3 = this._binding;
            builder3.getClass();
            TextView textView2 = (TextView) builder3.headers;
            TypedValue typedValue3 = new TypedValue();
            typedValue = context.getTheme().resolveAttribute(R.attr.colorError, typedValue3, true) ? typedValue3 : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968872");
                return;
            }
            textView2.setTextColor(typedValue.data);
            setFindInPageChevronsEnabled(false);
            this.isFirstOccurrence = false;
            this.isLastOccurrence = false;
        }
        if (this.enableLastOccurrenceSearchFlag && this.lastOccurrenceSearchFlag) {
            this.lastOccurrenceSearchFlag = false;
            FindInPageListener findInPageListener = this.listener;
            if (findInPageListener != null) {
                findInPageListener.onFindPrevClicked();
            }
        }
        Request.Builder builder4 = this._binding;
        builder4.getClass();
        ((TextView) builder4.headers).setVisibility(0);
    }
}
