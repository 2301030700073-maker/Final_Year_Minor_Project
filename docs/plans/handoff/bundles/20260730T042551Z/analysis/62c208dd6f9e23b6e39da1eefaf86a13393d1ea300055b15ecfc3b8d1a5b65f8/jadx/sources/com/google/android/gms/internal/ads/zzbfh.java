package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.BinderC3652rv;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbfh extends RelativeLayout {
    private static final float[] zza = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private AnimationDrawable zzb;

    public zzbfh(Context context, zzbfg zzbfgVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.checkNotNull(zzbfgVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zza, null, null));
        shapeDrawable.getPaint().setColor(zzbfgVar.zzd());
        setLayoutParams(layoutParams);
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzbfgVar.zzg())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzbfgVar.zzg());
            textView.setTextColor(zzbfgVar.zze());
            textView.setTextSize(zzbfgVar.zzf());
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            int zzx = com.google.android.gms.ads.internal.util.client.zzf.zzx(context, 4);
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            textView.setPadding(zzx, 0, com.google.android.gms.ads.internal.util.client.zzf.zzx(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List zzi = zzbfgVar.zzi();
        if (zzi != null && zzi.size() > 1) {
            this.zzb = new AnimationDrawable();
            Iterator it = zzi.iterator();
            while (it.hasNext()) {
                try {
                    this.zzb.addFrame((Drawable) BinderC3652rv.o(((zzbfj) it.next()).zzf()), zzbfgVar.zzb());
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Error while getting drawable.", e);
                }
            }
            imageView.setBackground(this.zzb);
        } else if (zzi.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) BinderC3652rv.o(((zzbfj) zzi.get(0)).zzf()));
            } catch (Exception e2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.zzb;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
