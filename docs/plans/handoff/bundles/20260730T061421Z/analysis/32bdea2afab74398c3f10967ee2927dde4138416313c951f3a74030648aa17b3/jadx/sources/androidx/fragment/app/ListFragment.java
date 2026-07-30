package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b.i.b.C0;
import b.i.b.D0;
import b.i.b.r;

/* loaded from: classes.dex */
public class ListFragment extends r {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f118a = new Handler();

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f119b = new C0(this);

    /* renamed from: c, reason: collision with root package name */
    public final AdapterView.OnItemClickListener f120c = new D0(this);

    /* renamed from: d, reason: collision with root package name */
    public ListAdapter f121d;
    public ListView e;
    public View f;
    public TextView g;
    public View h;
    public View i;
    public boolean j;

    public final void a() {
        if (this.e != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.e = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            this.g = textView;
            if (textView == null) {
                this.f = view.findViewById(R.id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.h = view.findViewById(16711682);
            this.i = view.findViewById(16711683);
            View findViewById = view.findViewById(R.id.list);
            if (!(findViewById instanceof ListView)) {
                if (findViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) findViewById;
            this.e = listView;
            View view2 = this.f;
            if (view2 != null) {
                listView.setEmptyView(view2);
            }
        }
        this.j = true;
        this.e.setOnItemClickListener(this.f120c);
        ListAdapter listAdapter = this.f121d;
        if (listAdapter != null) {
            this.f121d = null;
            boolean z = 0 != 0;
            this.f121d = listAdapter;
            ListView listView2 = this.e;
            if (listView2 != null) {
                listView2.setAdapter(listAdapter);
                if (!this.j && !z) {
                    c(true, requireView().getWindowToken() != null);
                }
            }
        } else if (this.h != null) {
            c(false, false);
        }
        this.f118a.post(this.f119b);
    }

    public void b() {
    }

    public final void c(boolean z, boolean z2) {
        a();
        View view = this.h;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.j == z) {
            return;
        }
        this.j = z;
        if (z) {
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
                this.i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            } else {
                view.clearAnimation();
                this.i.clearAnimation();
            }
            this.h.setVisibility(8);
            this.i.setVisibility(0);
            return;
        }
        if (z2) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            this.i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        } else {
            view.clearAnimation();
            this.i.clearAnimation();
        }
        this.h.setVisibility(0);
        this.i.setVisibility(8);
    }

    @Override // b.i.b.r
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(requireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // b.i.b.r
    public void onDestroyView() {
        this.f118a.removeCallbacks(this.f119b);
        this.e = null;
        this.j = false;
        this.i = null;
        this.h = null;
        this.f = null;
        this.g = null;
        super.onDestroyView();
    }

    @Override // b.i.b.r
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a();
    }
}
