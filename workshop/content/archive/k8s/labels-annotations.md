# Labels and annotations

- Most Kubernetes resources can have *labels* and *annotations*

- Both labels and annotations are arbitrary strings

  (with some limitations that we'll explain in a minute)

- Both labels and annotations can be added, removed, changed, dynamically

- This can be done with:

  - the `kubectl edit` command

  - the `kubectl label` and `kubectl annotate`

  - ... many other ways! (`kubectl apply -f`, `kubectl patch`, ...)

---

## Viewing labels and annotations

- Let's see what we get when we create a Deployment

.exercise[

- Create a Deployment:
  ```execute
  kubectl create deployment web --image=nginx
  ```

- Look at its annotations and labels:
  ```execute
  kubectl describe deployment web
  ```

]

So, what do we get?

---

## Labels and annotations for our Deployment

- We see one label:
  ```
  Labels: app=web
  ```

- This is added by `kubectl create deployment`

- And one annotation:
  ```
  Annotations: deployment.kubernetes.io/revision: 1
  ```

- This is to keep track of successive versions when doing rolling updates

---

## And for the related Pod?

- Let's look up the Pod that was created and check it too

.exercise[

- Find the name of the Pod:
  ```execute
  kubectl get pods
  ```

- Display its information:
  ```execute
  kubectl describe pod web-xxxxxxxxxx-yyyyy
  ```

]

So, what do we get?

---

## Labels and annotations for our Pod

- We see two labels:
  ```
    Labels: app=web
            pod-template-hash=xxxxxxxxxx
  ```

- `app=web` comes from `kubectl create deployment` too

- `pod-template-hash` was assigned by the Replica Set

  (when we will do rolling updates, each set of Pods will have a different hash)

- There are no annotations:
  ```
  Annotations: <none>
  ```

---

## Selectors

- A *selector* is an expression matching labels

- It will restrict a command to the objects matching *at least* all these labels

.exercise[

- List all the pods with at least `app=web`:
  ```execute
  kubectl get pods --selector=app=web
  ```

- List all the pods with a label `app`, regardless of its value:
  ```execute
  kubectl get pods --selector=app
  ```

]

---

## Settings labels and annotations

- The easiest method is to use `kubectl label` and `kubectl annotate`

.exercise[

- Set a label on the `web` Deployment:
  ```execute
  kubectl label deployment web color=blue
  ```

- Check it out:
  ```execute
  kubectl describe deployment web
  ```

]

---

class: extra-details

## More on selectors

- If a selector has multiple labels, it means "match at least these labels"

  Example: `--selector=app=frontend,release=prod`

- `--selector` can be abbreviated as `-l` (for **l**abels)

  We can also use negative selectors

  Example: `--selector=app!=web`

- Selectors can be used with most `kubectl` commands

  Examples: `kubectl delete`, `kubectl label`, ...

---

## Other ways to view labels

- We can use the `--show-labels` flag with `kubectl get`

.exercise[

- Show labels for a bunch of objects:
  ```execute
  kubectl get --show-labels po,rs,deploy,svc,no
  ```

]

---

## Differences between labels and annotations

- The *key* for both labels and annotations:

  - must start and end with a letter or digit

  - can also have `.` `-` `_` (but not in first or last position)

  - can be up to 63 characters, or 253 + `/` + 63

- Label *values* are up to 63 characters, with the same restrictions

- Annotations *values* can have arbitrary characeters (yes, even binary)

- Maximum length isn't defined

  (dozens of kilobytes is fine, hundreds maybe not so much)

---

## Cleanup web deployment

- Time to clean up web and move on

.exercise[

  - delete the web deployment
  ```execute
  kubectl delete deployment web
  ```
]

:EN:- Labels and annotations
:FR:- *Labels* et annotations
