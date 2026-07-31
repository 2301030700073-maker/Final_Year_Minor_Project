package org.wikipedia.views;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import androidx.core.view.ActionProvider;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.media.AvPlayer;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchActionProvider extends ActionProvider {
    public final OkHttpCall.AnonymousClass1 binding;
    public final Callback callback;
    public final String searchHintString;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onQueryTextChange(String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchActionProvider(Context context, String str, Callback callback) {
        super(context);
        context.getClass();
        str.getClass();
        this.searchHintString = str;
        this.callback = callback;
        View inflate = LayoutInflater.from(context).inflate(R.layout.group_search, (ViewGroup) null, false);
        LinearLayout linearLayout = (LinearLayout) inflate;
        CabSearchView cabSearchView = (CabSearchView) Room.findChildViewById(inflate, R.id.search_input);
        if (cabSearchView != null) {
            this.binding = new OkHttpCall.AnonymousClass1(9, linearLayout, cabSearchView);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.search_input)));
            throw null;
        }
    }

    @Override // androidx.core.view.ActionProvider
    public final View onCreateActionView() {
        OkHttpCall.AnonymousClass1 anonymousClass1 = this.binding;
        CabSearchView cabSearchView = (CabSearchView) anonymousClass1.this$0;
        cabSearchView.setFocusable(true);
        cabSearchView.setIconified(false);
        cabSearchView.setMaxWidth(Integer.MAX_VALUE);
        cabSearchView.setInputType(1);
        cabSearchView.setSubmitButtonEnabled(false);
        cabSearchView.setQueryHint(this.searchHintString);
        Context context = this.mContext;
        TypedValue m = ViewSizeResolver$CC.m(context);
        if (!context.getTheme().resolveAttribute(R.attr.secondary_color, m, true)) {
            m = null;
        }
        if (m == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
            return null;
        }
        cabSearchView.setSearchHintTextColor(m.data);
        cabSearchView.setOnQueryTextListener(new AvPlayer(27, this));
        cabSearchView.setOnQueryTextFocusChangeListener(new SearchActionProvider$$ExternalSyntheticLambda0(this, 0));
        cabSearchView.findViewById(R.id.search_plate).setBackgroundColor(0);
        Object systemService = cabSearchView.getContext().getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).showSoftInput(cabSearchView, 1);
        LinearLayout linearLayout = (LinearLayout) anonymousClass1.val$callback;
        linearLayout.getClass();
        return linearLayout;
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean overridesItemVisibility() {
        return true;
    }
}
