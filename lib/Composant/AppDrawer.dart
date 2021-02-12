import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            
            accountName: Text('Moumni abdou'),
            accountEmail: Text('moummniabdou.adil@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBAQEBAVEBAVEBYbEBUVDRsQEA4WIB0iIiAdHx8kKDQsJCYxJx8fLTMtMSsuMDAwIys9QD8uPzQ5MC4BCgoKDg0OFRAQFTcZFhkrKzcrKzcrNy0rKzctNys3Ny0rNzcrLTA3Nzc1Ky0tLS0tKy4rKy03Nys3LSsrKysrLf/AABEIAMgAyAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAIDBAYBBwj/xAA9EAABAwIFAQYDBgUDBAMAAAABAgMRACEEBRIxQVEGEyJhcYEykaEHFCNCscFSYnLR8DOSshXC4fFkZaL/xAAZAQACAwEAAAAAAAAAAAAAAAACBAEDBQD/xAAlEQACAgICAgEFAQEAAAAAAAAAAQIRAyESMQRBIhMUMlFxYSP/2gAMAwEAAhEDEQA/AAOPZ/GWpsKgXJ6VXdfEX3861jTSe7VJOmYmLkVms3yY6lEGE9JrKx5UnxegqK+COpQvB/LP5jXMcAVwBJi/lSahrSYB0kTO0U98KcdUtAAmPhvam+MWrBopwLAnxdajeUpO1xPzrRN5KAoLUqUhPHBpmdZK2lGskkGLDiqVkhdE9AtnGKKYKSABuKkU7dIAOkC/U1CySTpFkx8qrpd1KJJtPFXRio9HBHDJSPIz/uqyULVcARNr0MTiEgyDIGw2+tOXnJSAkFB6pHiP+elWRwt9g9Ez7h+IA22qu7jVG3zIpNZvdIUq0A6dwBUwfYdWkIBbkXgSL8VLwOjrONYgBJkX86c7iSkDSRHNPxWASkg6xGnwzQ7FOBKgIJT5Us41KjgoXUqi0HTtO9dLCgmZvHvFCEYpIVqImjzD6XEgjeNql6JRRwYhZSZANwd6JpV4h4pEeIxtUPeyQAnT504NhSo3j5UDkn6IaHPuiNKTc7Wq2086lImBG4AsaYvDWkHUdxA2qPuVWlUEGaFNE00WWVOLnYjkimhoarq8R46VIhwhBtJkQRXEKBSTFz85qLfZyLbKFQRztvaiTQVpMgKjpQtjEJiNlcwKlOJKASDP8XSqmrZa5Xpjsa+QgpSAE70qCKdccKiEKI5MSkVyno43Qu0gh97CwbkADaqWLxgjYSRuagxDRQIQkEHfzqqXkmClImLz1pSOKL2WgXGYpySPyq8qN9lm1SopgmIANCMe7qVpiDzajGWtLS2Ak6SrY9KZklwONCyVGUuACT+U1XzRIbbIUSpIEpG80RwOlDf4hEge5qhnOKTpAFgeSmQmkI7mlR2jIJe3EkEm8iBHSqmKfLYISB1JIn5UVzbKAhsOJdC5FgLWrMZgraJ1AXrWxNS6II8VjXFwSSBEAH+1VG3VhUxqg7xcUR7OZU9jH0oSDpHxK3CBXsuTdjMM0iCgLUdyRUZfJjj17L8XjSyb9HibYJKiT4jBE8iiGGeiCD4gNvQQP1r1XFfZ3hHVaiCnySYrP539l+lJXh1mehuaiPlwYUvEkgTh8aHQW1gfDKVR4h0HnQ992RoJiORVNt5bC1tPDS4hUevSibbIWoLEEETHSiyU0mLNbooqbukAk9YoxgkFIkkJJHJvUD7akJ8KQL2gXio8O8lVyPHPWqn0dQaw2HKoGoEdeaslSkyjSm/J3qD77+CdKdPW3NUfvHwqJnyiqY7v0TSCzEpmDebeKkl0kkqRJmKoCLEGab31yAbE8mh4x7Jk7QWccC0kJ8IHHWussGBaP3oUjElJ6xVlnGlUHYj6VD6BsvrZhZg25A5q+2QEyRzsRNCA8sknVaKmOIgeLfy5qunaaJdUOONDStIMN8iN6VU8S2hSQqJPB867T8M1Ip4p9hPD5bpT4yFTweKE4jCtIcgJKJ2VMpo8pbkEWJHPWosfhkPQNQSsi4G1ZcMkk/l0MNGJW0fvBZdsrVuORwa1uDwiAiBdQ2vzVfMMsCnitQlYSBqFjapcOyUmSPCeTV2WSeogtHChWpQNpECVTqqhnDpUQ0BZKYUYtNaB1baSlXxGLRwaT+gpuJPJigjmUXbRJhm8kdchJVIHwiaHdosrLS0pG6gNzXoeEwWhQMzI63FSP5e0860hUKWhaVgd3JbE3JVHIgR6Vdj8p8/8Dx4nN0ipk2HTl+GZQ2kOOrGpZ08/S1FcJ2qeS7ocQFJ/o0K24uZopmWTJeQYOk8EEis1huyb3fp1uqIBmS73iwOKnlCV32P8JKqNyc0YCQtStIPWpsJjGnhqaWlY8jce1YvtvloaaT3KYSAkKSNubmheQLPgUnvGnRcpPwLA6UKhGrJcndICfadg0nHqIEEhEdD1qxgsscw8BYBUq50q1JT5TVvtukO41tIM+BBUeigP/VSZe1ACAdhzzVmaajjijOzfmymsthcATa/Sp8Pgm1HVAHSkhgIK1Kve0CZFWGFoIkGP4Z3qqWRwjdgFbNENoZkglRsOJrPYd3cKmYtWkfUCdLolMeHypndYaANF43mhx5OMd+yGDcC1rB8ei3hk05WHE6Z1EdOaIDCtqMK2/Lxpqj3BS4QmSoHrsKvxzizkvbOKw5Ta5HNqmZWkSkpgRRrDsWSHAUJJ8ShKjFEsLluGaeSVL7xrSYJ4q/6dk2gAw9YQIg8irLhSTrsbccmpcfmLB1tiDC5RCdxVBL6FAEW6A9arnjSJUtD8AApQSowCqb8VyimTYFLiCV78kG6/KlTEYaFpPY1oqUSVbDao0gJJIV4htXe+54PnehbuYhKiEiQaw4xbbHK/YcS7rTqO/PnUaFIUo7gJE0NGOG4MRUv3lKpkx6c0ahJdgSbJXFoJBFr39avII0bzPJF6BOT3gkWIkeVWsUSAkJEdCDXZItUrIL9x8JkRa1xRbCqQNJCSHVgd4YtYf+KDIxaGxuJ2JJikxjTJuSAmUjgda6Ld6Qxgnxf9DOKzEpATsCYFpk0PdzZeDUnSAW1KJWSi8+tNDDWKT3Tg1JI6wRTcLgMK0dMlJtBS6UK9+D8qvSS77NNNy6DhzNT7Zc7kQk/mul1EXtVzBYdgp1ISBN4AAoIGMWmyFocYI8WvwLT6ECD71PhEhkEk+EIvegk6ZPS2DcyYYU89iClOtB0SZC0CBEDYze9AnsfqWIv7QK0OfPMLOlKtSnAJI8hAFZrCANFQVBJMBJt70cPk9sy/KceWgunM0aEkNgEAhZA8HzoOjMA8pSkpgD+WrzeGbWgoMi8kTY+dQN902lQRII3JpnnDIq/QokUFqKlEKMgbRzVjDoEeIEHg1F3dyq4BMiBzUjC1Fem8Rc8VTkSj0EWHzYCR5Go0gyVq43q25h0AAqVPIofnGJ0ABCRe59KDE+T4h012EBnrpQluyk8EC4rrLqyQlQgXgHms2jGKb4hJuLWqw9n7iikTsbWuK0dUtld06SLLrChDkbqIiLijuUdni+hKjCCSTJO9ZxjHqSZJN/epxj1zCVqA9eKhTj2wZKRsMvS0iWwrSsK3GxPrSrMMFxACh8M286Vd9xFaI4nMUAmyTI2PkarYLBQlQWoTuPIU1/FLChpuCL13TrCvxNNpUYmazafSZfZFjUFJlBJJtMeGrWX6wCTBMXPFQpICNJcJH5SRE+1VxnBZbVrvEwOpq7hJqiGWH8wS1JdWBHXnyFAMb24lUJbKkjY69P0iqCcmzDMHdTWGddmYIQUtpHqbVcwf2eYtTgac8DuqCgDUtPrxTEcGOK+btkU30GuzGJOYrLbTTilxJ8PgR6q2HvWywuTuMqlSQUQQpQcSsJMbGDRZeEYyjL0stACANR/M84bEmNyTQLJcM+jvFvSC5cIJkiTMn6UtlUdtLQ1hw7VglWZLwrttgbelaPB55hXgC4lM+aaF5pgQuZ6UDZyJxRMKAAPS9CnFrY4oyi9G3xWatFGls2HTahWZY9QSAohOpMwTFtv2NPyfI9OnUZA8t6sZk+j7yhp/DIcZWjSFqaCjMTAVuKD4SdA5YzcGZ7EZq0gBZcQkDqoSKHvdpcK5ZtaVOcSCmT5TWzz77OsHj8OhTKBhsQEAp02QsxsofuPrXjOO7NPNqcb7taXWyQtGgkg1dj8bE/bszZQkuz0PD4lPhCp1kQagfIRIEmTtWRybOHClKHDBSfCo7x0NaUFS1JIMkCan7d42DZdwgUUkkwOlJGJ0qIJn2tXGlqvNh6U3E4YKEQRPSgu20ybO410k6kGUbD1qidbkhW3JPSrD7SkNhMx0qBgeGCSTN6txrRzk2Vi2NPdqkpBseRUaMAddrxzR3CMNzJM+R5q4nDoJjRY7maJzIB2Hy5APiPHWr/8A09Cky2II681K5gEATqMcVT71SVFIMJ6zVLdu0cy4wClBC7HjoK5XS6FJIInpSobkRRm3cWhMiLx4iDSQ+1uTAi16ClqxA53vVzB4TUnSLqBvVyxqgi3jcRZJFtglU+EX/faj/YHKWnH1PukOBBAQlX5Sbz/asfjsQiFtx4bi9zPWjv2f52lvEdy5dOJSlJUT8Dn5VfMx7004NYnREWuSs9pd/DhSRaupxGolQABIuY8R96rZZiSoFtY8SbGpQgJkCd7VnOQ8ooGZ5gg8Wwb6Fa/fj96bmOA1AKQNhYdRRUtydXFx/n1pzbcyBwbU3jgp46LVrZjnsNIPWmZfhkhRN/Stc5hG1mSNKufOqasnWlVrp4NJ5PHnHraL4ZI+ymggcVUzBnvGcRI8Mt6D/OJJj0kUfby0c7+VQ56yPu6kJECLD61Z4/jyTcpEZJqWkLAueFI4Ap2YuJShTqkAqCd9AKjVHJMTqSJEyJmps9BUplsfCVgq8wOKBWmLSPDc9wL6HnHHsOpkOOFQBQUi54NRZPmDjKrHUnlKjXu2Ow6Vyy4kKbUm6VXSf8615A5gsKrNFMtqCMMHQFHXqE8gH1tT2PNHJFproSnicWt9mmbRqA1iCQCBvANQqQtOpShZJgHrWsXhU2ISJ29BTg02tJEAn0rL5pMZ+1v2ec4zFKJNrVWSsi83rU5l2ccJVogDms+ModCtCrSbW3pyOWLRRLDNPoew7tJorhnJQohW196HYbCKQopVvFiRT0MEqiNIiTU2CoMmGNUoGxN/lSwrBJK1knyq01l6JkL0gjaJvT28PwmVH+mKBz/RLxSqyzhWAoi9hSqbJ2ShYCgfiFKqJZKZdDDa2jEZNh5UU7z1rX43L2WGySlKTpJKpm0VnMqRfVFN7T40hAQTdX/GnuDlJIolpGNxT0qXFS4TFJshR0KT8KvqPcVTcPj9RUTqd/Sn60UnufYftH99SGnCE45pImSNOLb/AIwevWtqmfiPTptXzZk2JWEIdQSHGHPCQfEAbiPkfnX0JkGZpxeERiE21pMjVqKSDBE+orL8rDxfJdMdwZL0wxh0+H0pCy/Wu4Ayn1FJYsDVnivTRcu6OvtifI1CnUi0ynjyq2biowZsabo5MQVNVMxRKFelTKQUmRUOZufhqP8AKaFhrszuVsqbQFC4k735owp1t3QqbjrTMsb8CRHF6A9q8cjLkF+NRUqG0TGtX9orLdym0gZNJWybttnzbDBv+MtKkoGykiLr9v1ivFUkaZAi80/P82fxLjjrqvEuBA2QgGQmoCYbNauDDwiZ+TJyZ6TkWaqew7Syu+kBXnFWH8zQ2oDXBPSsl2OWFNobM32jitMrIQTN1gGk82OMJBryJdUEPvViSuet6qozNlatM+Lg1CnBuJkBJjzqBWWiy0jxdKqUY+mS/Ikx+cwkpWDuoTXEOthWpxUEiEia7icEtaQkb6gTNDsdlLgI1RarFTVWd9X2aVGgpBF7VH3qEiSqL9aC4MFoQskJPwmZipcTg0KR/qFU1Vw32H9wq6DAeG6VW0zINKsyl9SJSAdINo6VyoeMleTo7hx3aQYm1YvNsUXFlc8yJPHStNnmK7tmAfEqw9Oax74mfpWnhj2xafZBiDdJ86etM1XfctEe/nVtNwKvAIMBiC0sncGyh1Fev/ZVmASrEYPV4FJDrHCoIGof8betePPIvWs7KZicNicE+TCZAXfdBJSqf19qpzw5RaDxyqSPoDLVWqZQ3HmahwZi3yp7yvGR5A0h47qTRoR2x6TamuGD5U1CqjUZT5g07eg62WAuaG5yqG1eYiKlZe4qnmj0qbRvKx9L0MpabJUaJ2bADm3FeVdvc1+9Y7u92mAQLyCd1H6R7V6D2pzhOEwy3ZlXwtp6rItXjDyilEky46SVeSZ/c/pVHh47bmJ+RP0CsXcjrNOxioZJpPbgVHmSvw0/1CtEUDvZvEd2UGfhj3jivVcO+2sJKTYiRJsa8Vyl8kA9Tat7keYq7oJAnTb+1KeXi5JMKPdGxcKAYV9NqlabYJjVB9Kzgxq9tINRnNFJMFMGs76T9B1/hpH2GUgnvBb51hM/7RpbUtKbnaTU2Y5o9dOkFJFiDcVjsbh1KUUqCiomxq/Fi3sCVv0Tf9YcWQk3FGspx3CjIm9Dslyg6ocJQCYJ07VokZUMK5uHOUGOKOaV6OjjfYWweFbctpgHk1ynIx61HSEJA60qXcWT9M86z7Fy4EkghIg+tAV+vpUq1hUyRfzqorkHcVsRVKgfY14Ag/UedWMMuRVF5dqkwLkWqb2QXHk0RwcuYcpG7Sj/ALVbfUfWqW4qXK8SGnQVf6ahpc/pP9t/apZHs977A5r97wrThP4iRodv+ZIEn3sfej+Y+FSFcEQa8v8AsjzHu8RiMGoiFeNF7qIsY9oPtXqeYplv0NZco8Mpo4ZXTI2VVxyxng71XwK5q06JFNLaGn2UnDBoMt4qxTaegUfpH70XxBgT86x+ZY0tIxuKBju2YR/UowPlQTVxaAnKkZrttnJxuLDLZ/BZBEzYkfEr0t9POsrinQtwkWSLJB4SNv8APOu4OQhaybrOkfzDcn9PnUIF6ZxxUVS9GXOVu2ROjxCoM3/00jqqrLwuKoZ4vxNp6Jk+9WMAsYJcJHUVpOzmN8cE2NjNY9l0ACTE9TRBON7uCm/ThPzoWrVMlaej07SbRM1CtJNyDPpXckUtzDNurMLUmwF5q4tChHPWs16dDCdoGFIUYggnaRzXU4dLZQ44AAFWvJo2plvugtKvxZukj61WcZQR4gCfnNdaQK7OYvEoLiT4FJWOCIBqfDrDhUhYCABa+/pQ5jCNKmGyDNuIqRGCGrc/7qm1VFj2WwyUkpAJk2jmlTG1KSqQoyNjMxSoKX7A4/o8RdZKdyD71H3qhzNToSpRhJv0BpOtgWkk881qC5VWua6zOoRc0loI4tRrs3hNacUsokJw6ylUfCqD+00MnRKRE0qRSWKr4Jdoq2oVYiAxlGPW0WcW0fxWFAOD+JOwPoRb2r6IwzyX2ErQZStAUkjkG4r5cZxCmnAseihwoHcGvb/smzUFt3CST3RSpuTP4SxqA9jIpPyo1Uv0MYJU6NBg1aXVIPWiq9qE5p+G+lXBN6KFUprovRpPdME5k7CFV5v2yeUMGhomDiMXuP4UCL+5re565CTevNu374SzlyujzpNvNM1PtC/kP4maad1bCEiyR0FcNOQjSdPQ10jem1pGayF0XHrQPM16nV+Rj5VoFxv0rNJ8RJ5JvUPZx1pmehv1itP2bZDj7bTxU0gquI+O2wPrFC8PhEnqk8HV4fnRjIUqW6nCr+JR8OoREXmdtuRQy0mdtukenow6UpECw2HQVcxLqFIA7sA2uKrIQIifeuKRBj6k1ktsvWB32N7sRYX5pqsPba3kalSg+XtTi2fMe9C2yz6L/ZXCeQqRSWI6VY7iLRauqZ6CpDWOiqlHkJPSlV04cgbW5vXajkF9M8NUQDoTAHMCSalSkHwgX5PSi3bDKO5eK02bdKlAgCxm4Hz+tBUvACAPTqa2YS5K0Z8k0cxGFt1NFeymJKBicMtOpK2FqTH5VRFUFE2KtyYSn+9ThRaUHG16VAETYiCIIionHkjoumBcLY1eSapMtnWEi/vxRDuz0/8A1RoggfTWu7A5z3GJw7oJ8JDWIAPxNrMJV7GPpWWWi2x+lNwT3dup1A6VApWOqTvQZI8o0FGVM+l+0DOpAUK5lr+psdQKjyPEHEYFpROolsSd5MQfrVXK16FqQfaksb1s18e4lHtAqxrzv7RRqayxsblbv1UmvRO0G/tXnv2gLvgIuEsuEepKR+9WruJT5H4szKFypR41U80xlAPMeiakdRAJkn3j9KbMxsgxVm1H+U/pQvL0aSNj7GaM4lIKBaZBFzN4tQpGMIgONlIGxjauI7CjrMwRKFCLk+FQ860XZVhtbzKlHSUaoESdUcVn2sWPCoGREKt8STWn7Job78kAklB0RYJPJ+RoMv4Nh41ckbZaRp2M9ZphNriup1G0X9aelCp9qyDSSGpMbCxHS1OSoQDseakk6SYG8elRrcPQegFAzuPs4vEaSOp2rqnf5hveTUPc94SZIgTTTh1wJAI4FTVg1JssLdJ23pVGGlwmwBAvXK6kixJma7b5At5gLbMra1HT/EmLx52rzPCKNyDc29q9vcWbW3ryztHkC8I4VoTOHUrwqH5J4NO+Ll1xYr5EN2gOXYJUTsLfvVWe8kqMJ4FOxLkpIioGTOkcTTwmXsC0kSoDewJq2r8quu9JsiwG3FqelMhSeeKkgYoUOxY8c9BRTgGh+PTYmuOR7x9lmL15elJ/I7p+aQr/ALqJZmjQ4FRzWX+yQn7m+f8A5CI9e7T/AGrb5kz3rcj4gKSa2/6a/j/igBnhkA+VYT7QmvDglDYNrSffQf2NbLHuamiDuLVl+3DQVhMOscKT9RXJ1KIPkr4sxuV4wIHwaiYja30qXFu6iTEeU0Mwa4JG4BI8xRFzYU6ZTQzcaapwUqKVXBuJ+oq4U3FQvEFJncCuOooZc5pWps7Tb0Nq9P7E5PoQcQ4IK5DU8J5PvXnvY7L1YrE6QPDIU4f4UA17fh1ISAIASLAUj5WVpcUN+Pit8mNDU3FO7tXlarIeSNre1NOKTx+m9Z4/x/0qPMkEQJ5pugm5H96sF4HcRao0rMESADwa7+k0QqMm1OQiTM/WklwDg1GtwHqCOlSdR0EidR1Anwx+XypVCXAD69K5UMHZ1Ttvh9fOoHkBQUkpCkFMKBTIUKVKq22vYpKTZ5/2g7CvpUVYZPeNq2SVBK0eV9xQJfZXGMtLfca0pRuCoa46x0pUq0MGebikwfpRqyk1ioqyjETcb1ylWgmLUSh6qWYOAgeZpUqls5I9j+y2Rl76/wD7AgegSlIrepXG+xpUqST+UjVwL/mjL9osP3ZKhdKt6zvaBGrLjyRoPpChSpUM+4/07KvieVNr8Z/q/W9F23JFKlT6Mlo44uj/AGR7PjEEvvXaSYSkizp5nyFKlS/kzcY6L/GgpTpnoGDwTbKdCEJaTOyEhKSfapShImTSpVm3ZpKKWkN71JsDNusUwuJFoJNKlXE0OS4qCQLcGLVTLrhuYAnpSpVFlcmPStREE35qRsEck0qVdRbDolDSVnxdOm9KlSoSGkf/2Q=='),
            ),
            otherAccountsPictures: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(title: Text("Adding New Account"));
                    },
                  );
                },
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
            trailing: Chip(
              label: Text('11'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
            trailing: Chip(
              label: Text('11'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
            trailing: Chip(
              label: Text('11'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
            trailing: Chip(
              label: Text('11'),
            ),
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
