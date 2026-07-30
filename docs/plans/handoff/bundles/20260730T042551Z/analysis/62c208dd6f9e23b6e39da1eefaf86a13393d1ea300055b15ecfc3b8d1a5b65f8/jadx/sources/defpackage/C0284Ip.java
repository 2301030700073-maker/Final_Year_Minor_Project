package defpackage;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: Ip, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0284Ip {

    /* renamed from: if, reason: not valid java name */
    public static final HashMap<String, Constructor<? extends AbstractC0130Bp>> f1566if;

    /* renamed from: do, reason: not valid java name */
    public final HashMap<Integer, ArrayList<AbstractC0130Bp>> f1567do = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends AbstractC0130Bp>> hashMap = new HashMap<>();
        f1566if = hashMap;
        try {
            hashMap.put("KeyAttribute", C0152Cp.class.getConstructor(new Class[0]));
            hashMap.put("KeyPosition", C0306Jp.class.getConstructor(new Class[0]));
            hashMap.put("KeyCycle", C0196Ep.class.getConstructor(new Class[0]));
            hashMap.put("KeyTimeCycle", C0350Lp.class.getConstructor(new Class[0]));
            hashMap.put("KeyTrigger", C0371Mp.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException unused) {
        }
    }

    public C0284Ip(Context context, XmlResourceParser xmlResourceParser) {
        HashMap<String, C4044ya> hashMap;
        try {
            int eventType = xmlResourceParser.getEventType();
            AbstractC0130Bp abstractC0130Bp = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlResourceParser.getName();
                    HashMap<String, Constructor<? extends AbstractC0130Bp>> hashMap2 = f1566if;
                    if (hashMap2.containsKey(name)) {
                        try {
                            AbstractC0130Bp newInstance = hashMap2.get(name).newInstance(new Object[0]);
                            try {
                                newInstance.mo223for(context, Xml.asAttributeSet(xmlResourceParser));
                                m972if(newInstance);
                            } catch (Exception unused) {
                            }
                            abstractC0130Bp = newInstance;
                        } catch (Exception unused2) {
                        }
                    } else if (name.equalsIgnoreCase("CustomAttribute") && abstractC0130Bp != null && (hashMap = abstractC0130Bp.f286do) != null) {
                        C4044ya.m8751try(context, xmlResourceParser, hashMap);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlResourceParser.getName())) {
                    return;
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m971do(C4004xt c4004xt) {
        HashMap<Integer, ArrayList<AbstractC0130Bp>> hashMap = this.f1567do;
        ArrayList<AbstractC0130Bp> arrayList = hashMap.get(Integer.valueOf(c4004xt.f16626do));
        ArrayList<AbstractC0130Bp> arrayList2 = c4004xt.f16645if;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        ArrayList<AbstractC0130Bp> arrayList3 = hashMap.get(-1);
        if (arrayList3 != null) {
            Iterator<AbstractC0130Bp> it = arrayList3.iterator();
            while (it.hasNext()) {
                AbstractC0130Bp next = it.next();
                String str = ((ConstraintLayout.LayoutParams) c4004xt.f16628do.getLayoutParams()).f6288if;
                String str2 = next.f285do;
                if ((str2 == null || str == null) ? false : str.matches(str2)) {
                    arrayList2.add(next);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m972if(AbstractC0130Bp abstractC0130Bp) {
        Integer valueOf = Integer.valueOf(abstractC0130Bp.f287if);
        HashMap<Integer, ArrayList<AbstractC0130Bp>> hashMap = this.f1567do;
        if (!hashMap.containsKey(valueOf)) {
            hashMap.put(Integer.valueOf(abstractC0130Bp.f287if), new ArrayList<>());
        }
        hashMap.get(Integer.valueOf(abstractC0130Bp.f287if)).add(abstractC0130Bp);
    }
}
