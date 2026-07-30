package c.b.a.b.a.a.a.a.c;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.C0360e;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.proxy.StartActivityParams;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.Snackbar;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionFeedback$ActionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.BiFunction;

/* renamed from: c.b.a.b.a.a.a.a.c.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0371j {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2470a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0370i f2471b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f2472c = new RectF();

    /* renamed from: d, reason: collision with root package name */
    public final c.b.a.b.b.m.n f2473d;
    public final c.b.a.b.a.a.a.a.b.a e;
    public final Context f;
    public boolean g;

    @Nullable
    public c.b.a.b.a.a.a.a.a.a.x h;

    @Nullable
    public c.b.a.b.b.m.t i;

    @Nullable
    public C0368g j;

    public C0371j(Context context, Context context2, InterfaceC0370i interfaceC0370i, c.b.a.b.b.m.n nVar, c.b.a.b.a.a.a.a.b.a aVar) {
        this.f2470a = context;
        this.f = context2;
        this.f2471b = interfaceC0370i;
        this.f2473d = nVar;
        this.e = aVar;
    }

    public static boolean a(@Nullable c.b.a.b.a.a.a.a.a.a.s sVar, @Nullable c.b.a.b.a.a.a.a.a.a.x xVar, @Nullable d0 d0Var, @Nullable C0368g c0368g) {
        return (sVar == null || xVar == null || d0Var == null || c0368g == null || c0368g.m() || c0368g.j == null || xVar.f2360b == null) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0073, code lost:
    
        if (r9.g == false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(@android.support.annotation.Nullable android.view.ActionMode r10, android.view.Menu r11, @android.support.annotation.Nullable c.b.a.b.a.a.a.a.c.C0368g r12) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.a.a.a.a.c.C0371j.b(android.view.ActionMode, android.view.Menu, c.b.a.b.a.a.a.a.c.g):void");
    }

    public final void c(c.b.a.b.a.a.a.a.a.a.t tVar, MenuItem menuItem, @Nullable C0368g c0368g) {
        c.b.a.b.a.a.a.a.a.a.s sVar;
        Bitmap bitmap;
        if (c0368g == null || (sVar = tVar.f2349c) == null) {
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
        if (TextUtils.isEmpty(sVar.f2343a)) {
            return;
        }
        c.b.a.b.a.a.a.a.a.a.s sVar2 = tVar.f2349c;
        c.b.a.b.a.a.a.a.c.y0.d.a(sVar2);
        String str = sVar2.f2343a;
        c.b.a.b.a.a.a.a.c.y0.d.a(str);
        EntitiesData entitiesData = c0368g.l;
        if (entitiesData == null) {
            Log.e("AiAiSuggestUi", str.length() != 0 ? "Unable to find icon for ".concat(str) : new String("Unable to find icon for "), new Throwable());
            bitmap = null;
        } else {
            bitmap = (Bitmap) entitiesData.f3237b.get(str);
        }
        if (bitmap != null) {
            menuItem.setIcon(new BitmapDrawable(this.f2470a.getResources(), bitmap));
            String valueOf = String.valueOf(tVar.f2348b);
            c.b.a.b.a.a.a.a.c.y0.c.b(valueOf.length() != 0 ? "Setting icon for ".concat(valueOf) : new String("Setting icon for "));
        }
    }

    public boolean d(c.b.a.b.a.a.a.a.a.a.t tVar) {
        PendingIntent pendingIntent;
        ClipboardManager clipboardManager;
        if (this.h == null || this.j == null) {
            c.b.a.b.a.a.a.a.c.y0.c.c("Invalid state for menu: no entity");
            return false;
        }
        c.b.a.b.a.a.a.a.a.a.s sVar = tVar.f2349c;
        if (sVar != null) {
            sVar.f2344b = tVar.f2348b;
            c.b.a.b.a.a.a.a.a.a.B b2 = sVar.g;
            if (b2 == null || e(b2)) {
                C0368g c0368g = this.j;
                c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
                String str = sVar.f2343a;
                c.b.a.b.a.a.a.a.c.y0.d.a(str);
                String str2 = str;
                EntitiesData entitiesData = c0368g.l;
                if (entitiesData == null) {
                    Log.e("AiAiSuggestUi", str2.length() != 0 ? "Unable to find pending intent for ".concat(str2) : new String("Unable to find pending intent for "), new Throwable());
                    pendingIntent = null;
                } else {
                    c.b.a.b.a.a.a.a.c.y0.d.a(entitiesData);
                    pendingIntent = (PendingIntent) entitiesData.f3238c.get(str2);
                }
                c.b.a.b.a.a.a.a.a.a.x xVar = this.h;
                if (xVar != null) {
                    this.f2471b.b(sVar, xVar);
                }
                if (pendingIntent != null) {
                    try {
                        pendingIntent.send();
                    } catch (PendingIntent.CanceledException e) {
                        String valueOf = String.valueOf(tVar.f2348b);
                        Log.e("AiAiSuggestUi", valueOf.length() != 0 ? "Pending Intent canceled for ".concat(valueOf) : new String("Pending Intent canceled for "), e);
                        return false;
                    } catch (ActivityNotFoundException e2) {
                        String valueOf2 = String.valueOf(tVar.f2348b);
                        Log.e("AiAiSuggestUi", valueOf2.length() != 0 ? "Error launching intent for ".concat(valueOf2) : new String("Error launching intent for "), e2);
                        return false;
                    }
                }
            } else {
                c.b.a.b.a.a.a.a.a.a.B b3 = sVar.g;
                c.b.a.b.a.a.a.a.c.y0.d.a(b3);
                Intent intentInfoToIntent = intentInfoToIntent(b3, true);
                if (intentInfoToIntent == null) {
                    return true;
                }
                try {
                    if (this.h != null) {
                        this.f2471b.b(sVar, this.h);
                    }
                    ComponentName component = intentInfoToIntent.getComponent();
                    if (component == null || TextUtils.isEmpty(component.getClassName())) {
                        this.f2470a.startActivity(intentInfoToIntent);
                    } else {
                        c.b.a.b.a.a.a.a.a.a.B b4 = sVar.g;
                        c.b.a.b.a.a.a.a.c.y0.d.a(b4);
                        int ordinal = b4.h.ordinal();
                        if (ordinal == 1) {
                            String stringExtra = intentInfoToIntent.getStringExtra("text");
                            if (stringExtra != null && (clipboardManager = (ClipboardManager) this.f2470a.getSystemService("clipboard")) != null) {
                                clipboardManager.setPrimaryClip(ClipData.newPlainText(this.f2470a.getString(R.string.copy_clip_description), stringExtra));
                            }
                        } else if (ordinal == 2) {
                            C0368g c0368g2 = this.j;
                            if (c0368g2 != null && c0368g2.n()) {
                                c.b.a.b.b.m.n nVar = this.f2473d;
                                ImageActionUtils.startShareActivity(nVar.mContext, nVar.mBitmapSupplier, c0368g2.j(), intentInfoToIntent, "ImageApiImpl");
                            }
                            c.b.a.b.a.a.a.a.c.y0.c.c("Cannot share image because no image was found.");
                        } else if (ordinal == 3) {
                            m(intentInfoToIntent);
                        } else if (ordinal == 4) {
                            C0368g c0368g3 = this.j;
                            if (c0368g3 != null && c0368g3.n()) {
                                final c.b.a.b.b.m.n nVar2 = this.f2473d;
                                final Rect j = c0368g3.j();
                                Objects.requireNonNull(nVar2);
                                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.b.a.b.b.m.f
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final n nVar3 = n.this;
                                        Rect rect = j;
                                        ContentResolver contentResolver = nVar3.mContext.getContentResolver();
                                        Uri contentUri = MediaStore.Images.Media.getContentUri("external_primary");
                                        ContentValues contentValues = new ContentValues();
                                        StringBuilder f = c.a.c.a.a.f("Img_");
                                        f.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.US).format(new Date()));
                                        f.append(".jpeg");
                                        contentValues.put("_display_name", f.toString());
                                        contentValues.put("is_pending", (Integer) 1);
                                        final Uri insert = contentResolver.insert(contentUri, contentValues);
                                        try {
                                            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(insert, "w");
                                            try {
                                                ImageActionUtils.cropBitmap((Bitmap) nVar3.mBitmapSupplier.get(), rect).compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(openFileDescriptor.getFileDescriptor()));
                                                contentValues.clear();
                                                contentValues.put("is_pending", (Integer) 0);
                                                contentResolver.update(insert, contentValues, null, null);
                                                nVar3.f2723a.runOnUiThread(new Runnable() { // from class: c.b.a.b.b.m.d
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        final n nVar4 = n.this;
                                                        final Uri uri = insert;
                                                        Snackbar.show(nVar4.f2723a, R.string.saved_images_snackbar_label, R.string.saved_images_snackbar_action, null, new Runnable() { // from class: c.b.a.b.b.m.c
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                n nVar5 = n.this;
                                                                Uri uri2 = uri;
                                                                Objects.requireNonNull(nVar5);
                                                                Intent intent = new Intent("android.intent.action.VIEW");
                                                                intent.setDataAndType(uri2, "image/jpeg");
                                                                intent.setFlags(268435456);
                                                                nVar5.mContext.startActivity(intent);
                                                            }
                                                        });
                                                    }
                                                });
                                                openFileDescriptor.close();
                                            } finally {
                                            }
                                        } catch (IOException e3) {
                                            Log.e("ImageApiImpl", "error saving image", e3);
                                        }
                                    }
                                });
                            }
                            c.b.a.b.a.a.a.a.c.y0.c.c("Cannot save Image because no image was found.");
                        } else if (ordinal != 5) {
                            this.f.sendBroadcast(intentInfoToIntent);
                        } else {
                            C0368g c0368g4 = this.j;
                            if (c0368g4 != null && c0368g4.n()) {
                                final c.b.a.b.b.m.n nVar3 = this.f2473d;
                                final Rect j2 = c0368g4.j();
                                Objects.requireNonNull(nVar3);
                                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.b.a.b.b.m.e
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        n nVar4 = n.this;
                                        Rect rect = j2;
                                        Objects.requireNonNull(nVar4);
                                        try {
                                            ((ClipboardManager) nVar4.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newUri(nVar4.mContext.getContentResolver(), "CopyImage", ImageActionUtils.getImageUri((Bitmap) nVar4.mBitmapSupplier.get(), rect, nVar4.mContext, "ImageApiImpl")));
                                        } catch (Exception e3) {
                                            Log.e("ImageApiImpl", "error copying image", e3);
                                        }
                                    }
                                });
                            }
                            c.b.a.b.a.a.a.a.c.y0.c.c("Cannot copy image because no image was found.");
                        }
                    }
                } catch (ActivityNotFoundException e3) {
                    String valueOf3 = String.valueOf(tVar.f2348b);
                    Log.e("AiAiSuggestUi", valueOf3.length() != 0 ? "Error launching intent for ".concat(valueOf3) : new String("Error launching intent for "), e3);
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean e(@Nullable c.b.a.b.a.a.a.a.a.a.B b2) {
        if (b2 == null) {
            return true;
        }
        if (TextUtils.isEmpty(b2.f2279d) && TextUtils.isEmpty(b2.f2277b) && TextUtils.isEmpty(b2.f2278c) && TextUtils.isEmpty(b2.e) && TextUtils.isEmpty(b2.f) && b2.g == 0) {
            List list = b2.f2276a;
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            if (list.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public void f(SuggestParcelables$InteractionType suggestParcelables$InteractionType, @Nullable c.b.a.b.a.a.a.a.a.a.t tVar) {
        C0368g c0368g = this.j;
        if (c0368g == null) {
            c.b.a.b.a.a.a.a.c.y0.c.b("onSuggestViewActionInvoked logging failed, entitiesModel is null.");
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g.n() ? "IMAGE" : "TEXT").concat(" Action Invoked - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g.e, c0368g.k(), c0368g.h, c0368g.i));
        String str = c0368g.e;
        ArrayList arrayList = new ArrayList();
        String str2 = c0368g.e;
        String k = c0368g.k();
        String str3 = c0368g.h;
        String str4 = c0368g.i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        c.b.a.b.a.a.a.a.a.a.x xVar = this.h;
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        iVar.f2316b = SystemClock.elapsedRealtime();
        C0360e c0360e = new C0360e();
        c0360e.h = str2;
        c0360e.i = k;
        c0360e.j = str3;
        c0360e.k = str4;
        iVar.f2315a = c0360e;
        c0360e.e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_INVOKED;
        c0360e.f2307a = feedbackParcelables$SelectionFeedback$SelectionType;
        if (xVar != null) {
            c0360e.f2308b = xVar;
            c0360e.l = C0374m.i(xVar, feedbackParcelables$SelectionFeedback$SelectionType);
            c0360e.f2309c = C0374m.h(xVar);
            c0360e.m = C0374m.g(xVar);
        }
        if (tVar != null) {
            c0360e.f2310d = tVar.f2349c;
            if (c0360e.m != null) {
                int i = 0;
                while (true) {
                    List list = c0360e.m;
                    c.b.a.b.a.a.a.a.c.y0.d.a(list);
                    if (i >= list.size()) {
                        break;
                    }
                    List list2 = c0360e.m;
                    c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                    String str5 = ((c.b.a.b.a.a.a.a.a.a.g) list2.get(i)).f2311a;
                    c.b.a.b.a.a.a.a.c.y0.d.a(str5);
                    c.b.a.b.a.a.a.a.a.a.s sVar = c0360e.f2310d;
                    c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
                    if (str5.equals(sVar.f2343a)) {
                        c0360e.n = C0374m.f(tVar, i);
                    }
                    i++;
                }
            }
        }
        c0360e.o = suggestParcelables$InteractionType;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str;
        jVar.f2318a = arrayList;
        n(str, jVar);
    }

    public void g(Rect rect) {
        if (this.h == null || this.i == null) {
            return;
        }
        RectF rectF = this.f2472c;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public boolean h(MenuItem menuItem) {
        c.b.a.b.a.a.a.a.a.a.x xVar = this.h;
        if (xVar == null || this.j == null) {
            c.b.a.b.a.a.a.a.c.y0.c.c("Invalid state for menu: no entity");
            return false;
        }
        List list = xVar.f2360b;
        if (list == null) {
            return false;
        }
        int itemId = menuItem.getItemId() - android.R.id.textAssist;
        if (itemId < 0 || itemId >= list.size()) {
            StringBuilder sb = new StringBuilder(48);
            sb.append("Invalid menu item clicked; item id = ");
            sb.append(itemId);
            c.b.a.b.a.a.a.a.c.y0.c.c(sb.toString());
            return false;
        }
        c.b.a.b.a.a.a.a.a.a.t tVar = (c.b.a.b.a.a.a.a.a.a.t) list.get(itemId);
        if (tVar == null) {
            return false;
        }
        f(SuggestParcelables$InteractionType.LONG_PRESS, tVar);
        return d(tVar);
    }

    public void i(SuggestParcelables$InteractionType suggestParcelables$InteractionType) {
        C0368g c0368g = this.j;
        if (c0368g == null) {
            c.b.a.b.a.a.a.a.c.y0.c.b("onSelectionDismissed logging failed, entitiesModel is null.");
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g.n() ? "IMAGE" : "TEXT").concat(" Selection Dismissed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g.e, c0368g.k(), c0368g.h, c0368g.i));
        String str = c0368g.e;
        ArrayList arrayList = new ArrayList();
        String str2 = c0368g.e;
        String k = c0368g.k();
        String str3 = c0368g.h;
        String str4 = c0368g.i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0357b c0357b = c0368g.j;
        c.b.a.b.a.a.a.a.a.a.x xVar = this.h;
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        iVar.f2316b = SystemClock.elapsedRealtime();
        c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
        nVar.f = str2;
        nVar.g = k;
        nVar.h = str3;
        nVar.i = str4;
        C0374m.c(xVar, nVar);
        iVar.f2315a = nVar;
        nVar.f2327a = feedbackParcelables$SelectionFeedback$SelectionType;
        nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_DISMISSED;
        if (c0357b != null) {
            c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
            nVar.j = c0357b;
        }
        if (xVar != null) {
            c.b.a.b.a.a.a.a.c.y0.d.a(xVar);
            nVar.f2328b = xVar;
        }
        nVar.k = suggestParcelables$InteractionType;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str;
        c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
        jVar.f2318a = arrayList;
        n(str, jVar);
    }

    @VisibleForTesting
    @Nullable
    public Intent intentInfoToIntent(c.b.a.b.a.a.a.a.a.a.B b2, boolean z) {
        String valueOf = String.valueOf(b2);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Checking intent info: ");
        sb.append(valueOf);
        c.b.a.b.a.a.a.a.c.y0.c.b(sb.toString());
        Intent intent = new Intent();
        if (!TextUtils.isEmpty(b2.f2279d)) {
            intent.setAction(b2.f2279d);
        }
        if (!TextUtils.isEmpty(b2.f2277b) && !TextUtils.isEmpty(b2.f2278c)) {
            intent.setClassName(b2.f2277b, b2.f2278c);
        } else if (!TextUtils.isEmpty(b2.f2277b)) {
            intent.setPackage(b2.f2277b);
        }
        if (!TextUtils.isEmpty(b2.e)) {
            intent.setData(Uri.parse(b2.e));
        }
        if (!TextUtils.isEmpty(b2.f)) {
            intent.setType(b2.f);
        }
        int i = b2.g;
        if (i != 0) {
            intent.setFlags(i);
        }
        List<c.b.a.b.a.a.a.a.a.a.C> list = b2.f2276a;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        for (c.b.a.b.a.a.a.a.a.a.C c2 : list) {
            switch (c2.f2281b.ordinal()) {
                case 1:
                    intent.putExtra(c2.f2280a, c2.f2282c);
                    break;
                case 2:
                    intent.putExtra(c2.f2280a, c2.f2283d);
                    break;
                case 3:
                    intent.putExtra(c2.f2280a, c2.e);
                    break;
                case 4:
                    intent.putExtra(c2.f2280a, c2.f);
                    break;
                case 5:
                    if (!z) {
                        throw new IllegalArgumentException("Only ONE level of nested intent is allowed");
                    }
                    String str = c2.f2280a;
                    c.b.a.b.a.a.a.a.a.a.B b3 = c2.h;
                    c.b.a.b.a.a.a.a.c.y0.d.a(b3);
                    intent.putExtra(str, intentInfoToIntent(b3, false));
                    break;
                case 6:
                    intent.putExtra(c2.f2280a, Uri.parse(c2.i));
                    break;
                case 7:
                    intent.putExtra(c2.f2280a, c2.g);
                    break;
                default:
                    String valueOf2 = String.valueOf(c2.f2281b);
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 50);
                    sb2.append("Menu action error: unknown menu intent param type ");
                    sb2.append(valueOf2);
                    c.b.a.b.a.a.a.a.c.y0.c.c(sb2.toString());
                    return null;
            }
        }
        return intent;
    }

    public void j(SuggestParcelables$InteractionType suggestParcelables$InteractionType) {
        C0368g c0368g = this.j;
        if (c0368g == null) {
            c.b.a.b.a.a.a.a.c.y0.c.b("onSelectionShown logging failed, entitiesModel is null.");
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g.n() ? "IMAGE" : "TEXT").concat(" Selection Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g.e, c0368g.k(), c0368g.h, c0368g.i));
        String str = c0368g.e;
        ArrayList arrayList = new ArrayList();
        String str2 = c0368g.e;
        String k = c0368g.k();
        String str3 = c0368g.h;
        String str4 = c0368g.i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0357b c0357b = c0368g.j;
        c.b.a.b.a.a.a.a.a.a.x xVar = this.h;
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        iVar.f2316b = SystemClock.elapsedRealtime();
        c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
        nVar.f = str2;
        nVar.g = k;
        nVar.h = str3;
        nVar.i = str4;
        C0374m.c(xVar, nVar);
        iVar.f2315a = nVar;
        nVar.f2327a = feedbackParcelables$SelectionFeedback$SelectionType;
        nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_SHOWN;
        if (c0357b != null) {
            nVar.j = c0357b;
        }
        if (xVar != null) {
            nVar.f2328b = xVar;
        }
        nVar.k = suggestParcelables$InteractionType;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str;
        jVar.f2318a = arrayList;
        n(str, jVar);
    }

    public void k() {
        C0368g c0368g = this.j;
        if (c0368g == null) {
            c.b.a.b.a.a.a.a.c.y0.c.b("onSuggestViewActionMenuShown logging failed, entitiesModel is null.");
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
        C0368g c0368g2 = c0368g;
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g2.n() ? "IMAGE" : "TEXT").concat(" Action Menu Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g2.e, c0368g2.k(), c0368g2.h, c0368g2.i));
        String str = c0368g2.e;
        C0374m c0374m = new C0374m(str);
        c0374m.b(c0368g2.e, c0368g2.k(), c0368g2.h, c0368g2.i, c0368g2.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT, this.h, SuggestParcelables$InteractionType.LONG_PRESS);
        n(str, c0374m.e());
    }

    public void l(@Nullable c.b.a.b.a.a.a.a.a.a.x xVar) {
        C0368g c0368g = this.j;
        if (c0368g == null) {
            c.b.a.b.a.a.a.a.c.y0.c.b("onSuggestViewSelectionAdjusted logging failed, entitiesModel is null.");
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g.n() ? "IMAGE" : "TEXT").concat(" Selection Adjusted - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g.e, c0368g.k(), c0368g.h, c0368g.i));
        String str = c0368g.e;
        ArrayList arrayList = new ArrayList();
        String str2 = c0368g.e;
        String k = c0368g.k();
        String str3 = c0368g.h;
        String str4 = c0368g.i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0357b c0357b = c0368g.j;
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        iVar.f2316b = SystemClock.elapsedRealtime();
        c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
        nVar.f = str2;
        nVar.g = k;
        nVar.h = str3;
        nVar.i = str4;
        C0374m.c(xVar, nVar);
        iVar.f2315a = nVar;
        nVar.f2327a = feedbackParcelables$SelectionFeedback$SelectionType;
        nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_ADJUSTED;
        if (c0357b != null) {
            nVar.j = c0357b;
        }
        nVar.f2328b = xVar;
        nVar.k = suggestParcelables$InteractionType;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str;
        jVar.f2318a = arrayList;
        n(str, jVar);
    }

    public final void m(final Intent intent) {
        C0368g c0368g = this.j;
        if (c0368g == null || !c0368g.n()) {
            c.b.a.b.a.a.a.a.c.y0.c.c("Cannot open Lens because no image was found.");
            return;
        }
        final c.b.a.b.b.m.n nVar = this.f2473d;
        final Rect j = c0368g.j();
        if (nVar.mBitmapSupplier.get() == null) {
            Log.e("ImageApiImpl", "No snapshot available, not starting lens.");
        } else {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.b.a.b.b.m.g
                @Override // java.lang.Runnable
                public final void run() {
                    final n nVar2 = n.this;
                    ImageActionUtils.persistBitmapAndStartActivity(nVar2.mContext, (Bitmap) nVar2.mBitmapSupplier.get(), j, intent, new BiFunction() { // from class: c.b.a.b.b.m.b
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            PendingIntent pendingIntent;
                            n nVar3 = n.this;
                            Uri uri = (Uri) obj;
                            Intent intent2 = (Intent) obj2;
                            nVar3.mContext.grantUriPermission("com.google.android.googlequicksearchbox", uri, 1);
                            if (intent2 != null && intent2.hasExtra("SourceAppPackageName") && !TextUtils.isEmpty(intent2.getStringExtra("SourceAppPackageName"))) {
                                String stringExtra = intent2.getStringExtra("SourceAppPackageName");
                                Log.d("ImageApiImpl", "Source app package name is: " + stringExtra);
                                Intent launchIntentForPackage = nVar3.mContext.getPackageManager().getLaunchIntentForPackage(stringExtra);
                                if (launchIntentForPackage != null) {
                                    pendingIntent = PendingIntent.getActivity(nVar3.mContext, 1, launchIntentForPackage, 0);
                                    StartActivityParams startActivityParams = new StartActivityParams(pendingIntent, 0);
                                    startActivityParams.intent = new Intent("android.intent.action.VIEW").setData(((intent2 != null || intent2.getData() == null || TextUtils.isEmpty(intent2.getData().toString())) ? Uri.parse("googleapp://lens") : intent2.getData()).buildUpon().appendQueryParameter("LensBitmapUriKey", uri.toString()).build());
                                    return new Intent[]{ProxyActivityStarter.getLaunchIntent(nVar3.mContext, startActivityParams)};
                                }
                            }
                            pendingIntent = null;
                            StartActivityParams startActivityParams2 = new StartActivityParams(pendingIntent, 0);
                            startActivityParams2.intent = new Intent("android.intent.action.VIEW").setData(((intent2 != null || intent2.getData() == null || TextUtils.isEmpty(intent2.getData().toString())) ? Uri.parse("googleapp://lens") : intent2.getData()).buildUpon().appendQueryParameter("LensBitmapUriKey", uri.toString()).build());
                            return new Intent[]{ProxyActivityStarter.getLaunchIntent(nVar3.mContext, startActivityParams2)};
                        }
                    }, "ImageApiImpl");
                }
            });
        }
    }

    public final void n(String str, c.b.a.b.a.a.a.a.a.a.j jVar) {
        d0 d0Var;
        C0368g c0368g = this.j;
        if (c0368g == null || (d0Var = c0368g.f2459a) == null) {
            return;
        }
        d0Var.k(str, this.e, jVar);
    }

    public void o(c.b.a.b.b.m.t tVar) {
        this.i = tVar;
    }
}
